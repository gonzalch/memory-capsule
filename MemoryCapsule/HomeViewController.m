//
//  HomeViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController (){
    PFUser * user;
}

@end

@implementation HomeViewController

@synthesize tableView;
@synthesize viewList;
@synthesize addList;
@synthesize viewListImg;
@synthesize addListImg;

#pragma mark  - View lifecycle
/*
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
 {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }*/

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //user
    user = [PFUser currentUser];
    
    viewList = [[NSMutableArray alloc] initWithObjects:@"Capsules", @"Friends",@"Notifications", @"Map", nil];
    addList = [[NSMutableArray alloc] initWithObjects: @"New Capsule", @"Tell friends about this app", nil];
    viewListImg = [[NSArray alloc] initWithObjects:@"jar-32.png", @"friend.png",@"inbox-document-icon.png",@"app-map-icon.png", nil];
    addListImg = [[NSArray alloc] initWithObjects: @"jar-plus.png",@"notification.png",nil ];
    
    
    [self.tableView setAllowsSelection:YES];
    self.tableView.delegate = self;
    //self.tableView.dataSource = self;
    
    
}





#pragma mark - TableView dataSource methods
//We want 2 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath {    //
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString * selectedRow = cell.textLabel.text;
    
    if([selectedRow  isEqualToString: @"Friends"]){
        [super animateTabBarTransition:2];
    }
    
    if ([selectedRow isEqual: @"Capsules"]) {
        [super animateTabBarTransition:1];
    }
    
    if ([selectedRow isEqualToString: @"New Capsule"]){
        [super push_CreateCapsuleView];
    }
    
    else if ([selectedRow isEqualToString: @"Tell friends about this app"]){
        [super push_InviteFriendView];
    }
    
    else if ([selectedRow isEqualToString: @"Notifications"]){
        [self push_notificationsView];
    }

    else if([selectedRow isEqualToString:@"Map"]){
        [self push_MapView];
    }

}


// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch(section){
        case 0: return [viewList count]; break;
        case 1: return [addList count]; break;
        default: NSLog(@"Error"); return 0;
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch(section){
        case 0: return @"View"; break;
        case 1: return @"New";break;
        default: return @"There should only be sections on this tableView!";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}


// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * currentCell = nil;
    
    //Our cell is an object of the current view
    currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"testCell"];
    
    //lazy instantiation (at the last moment)
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"testCell"];
    }
    
    //Depending on our current section, populate the cells
    NSString * imageName;
    switch(indexPath.section){
            // View
        case 0:
            currentCell.textLabel.text = [viewList objectAtIndex:indexPath.row];
            currentCell.detailTextLabel.text = nil;
            currentCell.accessoryType = UITableViewCellAccessoryNone;
            imageName = [viewListImg objectAtIndex:indexPath.row];
            currentCell.imageView.image = [UIImage imageNamed:imageName];
            break;
        
            // New
        case 1:
            currentCell.textLabel.text = [addList objectAtIndex:indexPath.row];
            currentCell.detailTextLabel.text = nil;
            imageName = [addListImg objectAtIndex:indexPath.row];
            currentCell.imageView.image = [UIImage imageNamed:imageName];
            break;
    }
    
    /*Capsule cell NOTE: While these featurea are working, more needs to be done to clean up other bugs
     
    if([currentCell.textLabel.text isEqualToString:@"Capsules"]){
        PFQuery * capsules = [PFQuery queryWithClassName:@"Capsule"];
        [capsules whereKey:@"createdBy"equalTo:user.username];
        if(capsules != nil){
            currentCell.detailTextLabel.text = [NSString stringWithFormat:@"%i",[capsules countObjects]];
        }
    }
    
    //Friends cell
    else if([currentCell.textLabel.text isEqualToString:@"Friends"]){
        PFQuery *query = [PFQuery queryWithClassName:@"FriendsList"];
        [query whereKey:@"userName" equalTo: [user username]];
        if(query != nil){
            NSArray * reqQuery = [query findObjects];
            //friendsList = [[reqQuery valueForKey:@"friends"] objectAtIndex: 0];
            int friendsCount = [[[reqQuery valueForKey:@"friends"] objectAtIndex:0] count];
            currentCell.detailTextLabel.text = [NSString stringWithFormat:@"%i", friendsCount];
        }
    }
    
    
    //Notifications cell
    else if([currentCell.textLabel.text isEqualToString:@"Notifications"]){
        PFQuery * unreadMessagesQuery = [PFQuery queryWithClassName:@"Notifications"];
        [unreadMessagesQuery whereKey:@"to" equalTo:user.username];
        int unreadMessagesTally = [unreadMessagesQuery countObjects];
        if(unreadMessagesTally > 0){
            currentCell.imageView.image = [UIImage imageNamed:@"inbox-document-new.png"];
        }
        currentCell.detailTextLabel.text = [NSString stringWithFormat:@"%i",unreadMessagesTally];
        
    }*/
    if([currentCell.textLabel.text isEqualToString:@"Map" ]){
        currentCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    return currentCell;
}




#pragma mark - IBAction methods

-(IBAction)push_friendsView:(id)sender{
    FriendsViewController * friendsViewController = [[FriendsViewController alloc]initWithNibName:@"FriendsViewController" bundle:nil];
    [self.navigationController pushViewController:friendsViewController animated:YES];
    [self.tabBarController setSelectedIndex:2];
}

-(IBAction)push_capsulesView:(id)sender{
    [self.tabBarController setSelectedIndex:1];
}


-(IBAction) push_notificationsView{
    
    NotificationsController * notificationsViewController = [[NotificationsController alloc]initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:notificationsViewController animated:YES];
}


-(IBAction) push_MapView{
    CapsuleMapViewController * mapViewController = [[CapsuleMapViewController alloc] initWithNibName:@"CapsuleMapViewController" bundle:nil];
    [self.navigationController pushViewController:mapViewController animated:YES];
}

-(IBAction) animateView: (id) sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve: UIViewAnimationCurveLinear];
    [UIView setAnimationDuration: 0.8f];
    
}

@end
