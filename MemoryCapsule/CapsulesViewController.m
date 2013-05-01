//
//  CapsulesViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/21/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "CapsulesViewController.h"

@interface CapsulesViewController ()
{
    NSMutableArray *capsulesList;
}

@end

@implementation CapsulesViewController
@synthesize createNewCapsuleButton;
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [createNewCapsuleButton addTarget:self action:@selector(createNewCapsuleButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.tableView setAllowsSelection:YES];
    self.tableView.delegate = self;
    //self.createNewCapsuleButton.bounds.size.x
    //[self.createNewCapsuleButton setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    //[self.createNewCapsuleButton setBounds:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    //[self.createNewCapsuleButton setBounds:CGRectMake(self.createNewCapsuleButton.bounds.origin.x+ 1000, self.createNewCapsuleButton.bounds.origin.y, 200, self.createNewCapsuleButton.bounds.size.height)];
}



- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

-(IBAction)createNewCapsuleButtonPressed:(id)sender
{
    NSLog(@"createNewCapsuleButtonPressed");
    CreateCapsuleViewController *createCapsuleViewController = [[CreateCapsuleViewController alloc] initWithNibName:@"CreateCapsuleViewController" bundle:nil];
    
    [createCapsuleViewController setTitle:@"Create a capsule"];
    [self.navigationController pushViewController:createCapsuleViewController animated:YES];
    
}


// Ask Gonzalo about this --------

#pragma mark - TableView dataSource methods
//We want 1 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


// Delete capsule function
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *index = [[NSArray alloc]initWithObjects:indexPath, nil];
    
    NSString *deleteName = [capsulesList objectAtIndex:indexPath.row];
    
    NSLog(@"Deleting capsule %@", deleteName);
    
    // delete Capsule object from database
    PFQuery *deleteCapsuleQuery = [PFQuery queryWithClassName:@"Capsule"];
    [deleteCapsuleQuery whereKey:@"capsuleName" equalTo:deleteName];
    PFObject *deleteCapsule = [deleteCapsuleQuery getFirstObject];
    [deleteCapsule deleteInBackground]; // deletes capsule from database
    
    
    // delete capsuleName from capsules array in users CapsulesList in database
    PFUser * user = [PFUser currentUser];
    PFQuery *deleteCapsuleFromUserQuery = [PFQuery queryWithClassName:@"CapsulesList"];
    [deleteCapsuleFromUserQuery whereKey:@"userName" equalTo:[user username]];
    PFObject *deleteCapsuleFromList = [deleteCapsuleFromUserQuery getFirstObject];
    [deleteCapsuleFromList removeObjectsInArray:[NSArray arrayWithObjects:deleteName, nil] forKey:@"capsules"];
    [deleteCapsuleFromList save];
    
    // delete capsuleName from capsules array in everyone elses CapsulesList in database
    PFQuery *deleteCapsuleFromListQuery = [PFQuery queryWithClassName:@"CapsulesList"];
    [deleteCapsuleFromListQuery whereKey:@"userName" notEqualTo:[user username]];
    [deleteCapsuleFromListQuery findObjectsInBackgroundWithBlock:^(NSArray *deleteCapsuleObjects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d users.", deleteCapsuleObjects.count);
            
            if (deleteCapsuleObjects.count > 0) {
                for (PFObject *eachObject in deleteCapsuleObjects) {
                    
                    NSLog(@"%@ deleting capsule %@", [eachObject objectForKey:@"userName"], deleteName);
                    
                    [eachObject removeObjectsInArray:[NSArray arrayWithObjects:deleteName, nil] forKey:@"capsules"];
                    
                    [eachObject save];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    
    // delete images that belonged to the capsule in database
    PFQuery *deleteImagesQuery  = [PFQuery queryWithClassName:@"UserPhoto"];
    [deleteImagesQuery whereKey:@"capsuleName" equalTo:deleteName];
    [deleteImagesQuery findObjectsInBackgroundWithBlock:^(NSArray *deleteImagesArray, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d images.", deleteImagesArray.count);
            
            if (deleteImagesArray.count > 0) {
                for (PFObject *eachObject in deleteImagesArray) {
                    [eachObject deleteInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    
    // delete capsule name from tableview datasource array
    [capsulesList removeObjectAtIndex:indexPath.row];
    
    // delete capsule cell from tableview
    [self.tableView deleteRowsAtIndexPaths:index withRowAnimation: UITableViewRowAnimationNone];
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    
    // check if capsule should be locked
    PFQuery *dateQuery = [PFQuery queryWithClassName:@"Capsule"];
    [dateQuery whereKey:@"capsuleName" equalTo:capsulesList[indexPath.row]];
    PFObject *dateObject = [dateQuery getFirstObject];
    
    //NSLog(@"Capsule %@ is open:%@", capsulesList[indexPath.row], [dateObject valueForKey:@"open"]);
    
    if ([[dateObject objectForKey:@"open"] boolValue]) {
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
        NSString * selectedRow = cell.textLabel.text;
        
        ImagesViewController *imagesViewController = [[ImagesViewController alloc] initWithNibName:@"ImagesViewController" bundle:nil capsuleName:cell.textLabel.text];
        
        [imagesViewController setTitle:selectedRow];
        [self.navigationController pushViewController:imagesViewController animated:YES];
        
        NSDate *lockDate = [dateObject objectForKey:@"openDate"];
        NSDate *now = [[NSDate alloc] init];
        
        
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSMinuteCalendarUnit
                                                   fromDate:now
                                                     toDate:lockDate
                                                    options:0];
        if (components.day == 0 && components.minute >= 0) {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat: @"%@", capsulesList[indexPath.row]]
                                                              message:[NSString stringWithFormat:  @"This capsule will close soon! %i more minutes.", components.minute
                                                                       ]
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
        }
        
        else if (components.minute < 0) {
            NSDateFormatter *openDateFormatter = [[NSDateFormatter alloc] init];
            [openDateFormatter setDateStyle:NSDateFormatterLongStyle];
            NSDate *openDate = [dateObject objectForKey:@"openDate"];
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat: @"%@", capsulesList[indexPath.row]]
                                                              message:[NSString stringWithFormat:  @"This capsule was opened for good on %@.", [openDateFormatter stringFromDate:openDate]
                                                                       ]
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
        }
        
        else {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat: @"%@", capsulesList[indexPath.row]]
                                                              message:[NSString stringWithFormat:  @"This capsule will close in %i day(s), %i month(s), and %i year(s).", components.day, components.month, components.year]
                                    
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
        }
    }
    
    else {
        
        NSDate *openDate = [dateObject objectForKey:@"openDate"];
        NSDate *now = [[NSDate alloc] init];
        
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSMinuteCalendarUnit
                                                   fromDate:now
                                                     toDate:openDate
                                                    options:0];
        
        //NSLog(@"Difference in date components: %i/%i/%i", components.day, components.month, components.year);
        
        if (components.day == 0) {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat: @"%@ is locked", capsulesList[indexPath.row]]
                                                              message:[NSString stringWithFormat:  @"This capsule will open soon! %i more minutes.",
                                                                       components.minute]
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
        }
        
        else {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat: @"%@ is locked", capsulesList[indexPath.row]]
                                                              message:[NSString stringWithFormat:  @"This capsule will open in %i day(s), %i month(s), and %i year(s).", components.day, components.month, components.year]
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
        }
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //parse in list of capsules for current user
    PFUser * user = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
    [query whereKey:@"userName" equalTo: [user username]];
    NSArray * reqQuery = [query findObjects];
    
    
    capsulesList = [[reqQuery valueForKey:@"capsules"] objectAtIndex: 0];
    
    if (capsulesList.count > 0) {
        for (NSString *eachCapsule in capsulesList) {
            
            PFQuery *dateQuery = [PFQuery queryWithClassName:@"Capsule"];
            [dateQuery whereKey:@"capsuleName" equalTo:eachCapsule];
            PFObject *dateObject = [dateQuery getFirstObject];
            
            NSDate *lockDate = [dateObject valueForKey:@"lockDate"];
            NSDate *openDate = [dateObject valueForKey:@"openDate"];
            
            
            if ([lockDate timeIntervalSinceNow] < 1 && [openDate timeIntervalSinceNow] > 0) {
                //NSLog(@"Capsule %@ should be locked, %f", eachCapsule, [lockDate timeIntervalSinceNow]);
                
                [dateObject setObject:[NSNumber numberWithBool:NO] forKey:@"open"];
                [dateObject save];
            }
            
            else if ([openDate timeIntervalSinceNow] < 1 || [lockDate timeIntervalSinceNow] > 0) {
                //NSLog(@"Capsule %@ should be open, %f", eachCapsule,  [openDate timeIntervalSinceNow]);
                [dateObject setObject:[NSNumber numberWithBool:YES] forKey:@"open"];
                [dateObject save];
            }
        }
    }
    
    
    return [[[reqQuery valueForKey:@"capsules"] objectAtIndex:0] count];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch(section){
        case 0: return @"Capsules"; break;
        default: return @"Error!";
    }
}


// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * currentCell = nil;
    
    //Our cell is an object of the current view
    currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"testCell"];
    //lazy instantiation (at the last moment)
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault  reuseIdentifier:@"testCell"];
        
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = capsulesList[indexPath.row];
    
    // check how many images in capsule
    PFQuery *imagesQuery  = [PFQuery queryWithClassName:@"UserPhoto"];
    [imagesQuery whereKey:@"capsuleName" equalTo:capsulesList[indexPath.row]];
    [imagesQuery findObjectsInBackgroundWithBlock:^(NSArray *imagesArray, NSError *error) {
        if (!error) {
            // The find succeeded.
            //NSLog(@"Successfully retrieved %d images.", imagesArray.count);
            currentCell.detailTextLabel.text = [NSString stringWithFormat:@"%d", imagesArray.count];
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    // check if capsule should be locked
    PFQuery *dateQuery = [PFQuery queryWithClassName:@"Capsule"];
    [dateQuery whereKey:@"capsuleName" equalTo:capsulesList[indexPath.row]];
    PFObject *dateObject = [dateQuery getFirstObject];
    
    //NSLog(@"Capsule %@ is open:%@", capsulesList[indexPath.row], [dateObject valueForKey:@"open"]);
    
    if ([[dateObject objectForKey:@"open"] boolValue]) {
        
        currentCell.imageView.image = [UIImage imageNamed: @"jar-32.png"];
    }
    
    else {
        currentCell.imageView.image = [UIImage imageNamed: @"jar-lock.png"];
    }
    
    return currentCell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
