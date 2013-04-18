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
    
    //[self.tableView setAllowsSelection:YES];
    //self.tableView.delegate = self;
    
    [self.tableView setAllowsSelection:YES];
    self.tableView.delegate = self;
}



- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"CapsulesViewController -> viewWillAppear called");
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

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *index = [[NSArray alloc]initWithObjects:indexPath, nil];
    
    
    //PFObject *deleteCapsule = [capsulesList objectAtIndex:indexPath.row]; // gets correct object in capsulesList
    
    NSLog(@"Deleting capsule %@", [capsulesList objectAtIndex:indexPath.row]);
    
    
    // delete Capsule object from database
    PFQuery *deleteCapsuleQuery = [PFQuery queryWithClassName:@"Capsule"];
    [deleteCapsuleQuery whereKey:@"capsuleName" equalTo:[capsulesList objectAtIndex:indexPath.row]];
    PFObject *deleteCapsule = [deleteCapsuleQuery getFirstObject];
    [deleteCapsule deleteInBackground]; // deletes capsule from database
    
    // delete capsuleName from capsules array in CapsulesList in database
    PFUser * user = [PFUser currentUser];
    PFQuery *deleteCapsuleFromListQuery = [PFQuery queryWithClassName:@"CapsulesList"];
    [deleteCapsuleFromListQuery whereKey:@"userName" equalTo:[user username]];
    PFObject *deleteCapsuleFromList = [deleteCapsuleFromListQuery getFirstObject];
    [deleteCapsuleFromList removeObjectsInArray:[NSArray arrayWithObjects:[capsulesList objectAtIndex:indexPath.row], nil] forKey:@"capsules"];
    [deleteCapsuleFromList save];
    
    PFQuery *deleteImagesQuery  = [PFQuery queryWithClassName:@"UserPhoto"];
    [deleteImagesQuery whereKey:@"capsuleName" equalTo:[capsulesList objectAtIndex:indexPath.row]];
    [deleteImagesQuery findObjectsInBackgroundWithBlock:^(NSArray *deleteImagesArray, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d images.", deleteImagesArray.count);
            
            if (deleteImagesArray.count > 0) {
                for (PFObject *eachObject in deleteImagesArray) {
                    //[newObjectIDArray addObject:[eachObject objectId]];
                    [eachObject deleteInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    
    
    // delete images that belonged to the capsule in database
    /*
    PFQuery *deleteImagesQuery = [PFQuery queryWithClassName:@"UserPhoto"];
    [deleteImagesQuery whereKey:@"capsuleName" equalTo: [capsulesList objectAtIndex:indexPath.row]];
    NSArray *deleteImagesArray = [[[deleteImagesQuery findObjects] valueForKey:@"ObjectId"] objectAtIndex:0];
    NSLog(@"%i images to be deleted found.", [deleteImagesArray count]);
    for (int i = 0; i < [deleteImagesArray count]; i++) {
        NSString *imageId = [deleteImagesArray objectAtIndex:i];
        NSLog(@"Deleting image %i id %@", i, imageId);
        PFQuery *deleteImageQuery =[PFQuery queryWithClassName:@"UserPhoto"];
        [deleteImageQuery whereKey:@"ObjectId" equalTo:imageId];
        PFObject *deleteImage = [deleteImageQuery getFirstObject];
        [deleteImage deleteInBackground];
    }
    */
    //NSLog(@"%i images to be deleted found.", [deleteImagesArray count]);
    
    // delete capsule name from tableview datasource array
    [capsulesList removeObjectAtIndex:indexPath.row];
    
    [self.tableView deleteRowsAtIndexPaths:index withRowAnimation: UITableViewRowAnimationNone]; // deletes capsule cell from tableview
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString * selectedRow = cell.textLabel.text;
    NSLog(@"selected row for %@", selectedRow);
    
    ImagesViewController *imagesViewController = [[ImagesViewController alloc] initWithNibName:@"ImagesViewController" bundle:nil capsuleName:cell.textLabel.text];
    
    [imagesViewController setTitle:selectedRow];
    [self.navigationController pushViewController:imagesViewController animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"Querying database for capsuleslist");
    
    //parse in list of capsules for current user
    PFUser * user = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
    [query whereKey:@"userName" equalTo: [user username]];
    //NSLog(@"%@", [PFUser currentUser]);
    NSArray * reqQuery = [query findObjects];
    capsulesList = [[reqQuery valueForKey:@"capsules"] objectAtIndex: 0];
    NSLog(@"Found %i capsules", [capsulesList count]);
    return [[[reqQuery valueForKey:@"capsules"] objectAtIndex:0] count];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch(section){
        case 0: return @"Capsules"; break;
        default: return @"I assure you, I'm not on crack!";
    }
}


// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSLog(@"this shit was called");
    
    UITableViewCell * currentCell = nil;
    
    //Our cell is an object of the current view
    currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"testCell"];
    //lazy instantiation (at the last moment)
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault  reuseIdentifier:@"testCell"];
        currentCell.imageView.image = [UIImage imageNamed: @"capsule-icon.png"];
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = capsulesList[indexPath.row];
    
    PFQuery *imagesQuery  = [PFQuery queryWithClassName:@"UserPhoto"];
    [imagesQuery whereKey:@"capsuleName" equalTo:capsulesList[indexPath.row]];
    [imagesQuery findObjectsInBackgroundWithBlock:^(NSArray *imagesArray, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d images.", imagesArray.count);
            
            currentCell.detailTextLabel.text = [NSString stringWithFormat:@"%d images", imagesArray.count];
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];

    
    
    return currentCell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
