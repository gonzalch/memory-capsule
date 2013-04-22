//
//  InviteFriendsToCapsuleViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 4/7/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "InviteFriendsToCapsuleViewController.h"

@interface InviteFriendsToCapsuleViewController (){
    
    NSMutableArray * subscribedFriends;
    NSMutableArray * newSubscriptions;
    PFUser * user;
    NSString * capsuleName;
}

@end

@implementation InviteFriendsToCapsuleViewController
@synthesize tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    // Get current user
    user = [PFUser currentUser];
    
    // Retrieve names of friends currently subscribed capsule
    [self querySubscribedFriendsToCapsule];    
    
    //Other inits
    newSubscriptions = [[NSMutableArray alloc]init];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableView.delegate = self;
    
    // Do any additional setup after loading the view from its nib.
    UINavigationController * navBar = [self.navigationController.viewControllers objectAtIndex:1];
    capsuleName = navBar.title;
    
    [[self.navigationController.viewControllers objectAtIndex:2]setTitle:@"Invite friends"];
}

#pragma mark - TableView dataSource methods
//We want 1 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Subscribed to '%@'", capsuleName];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    
    //UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    //NSString * selectedRow = cell.textLabel.text;
    NSLog(@"selected row for %i", indexPath.row);
    
    //YouObjectType *object = [sourceArray objectAtIndex:indexPath.row]; //This assumes that your table has only one section and all cells are populated directly into that section from sourceArray.
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    
    if(cell.accessoryType != UITableViewCellAccessoryCheckmark){
        if ([cell.detailTextLabel.text isEqualToString:@""]) {
            //cell.accessoryType = UITableViewCellAccessoryCheckmark;
            cell.selectionStyle = UITableViewCellSelectionStyleBlue;
            cell.detailTextLabel.text = @"pending invitation";
            [newSubscriptions addObject:cell.textLabel.text];//:cell.textLabel.text];
        }
    }
       
    NSLog(@"New subscriptions: %i", [newSubscriptions count]);
    
}




- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(3_0){
    
    NSLog(@"deselected");
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if(cell.accessoryType != UITableViewCellAccessoryCheckmark){
        NSLog(@"removing %@",cell.textLabel.text);
        [newSubscriptions  removeObject:cell.textLabel.text];
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.text = @"";
    }
     NSLog(@"New subscriptions: %i", [newSubscriptions count]);
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"Querying database for friendslist");
    
    //parse in list of friends for current user
    PFQuery *query = [PFQuery queryWithClassName:@"FriendsList"];
    [query whereKey:@"userName" equalTo: [user username]];
    //NSLog(@"%@", [PFUser currentUser]);
    NSArray * reqQuery = [query findObjects];
    friendsList = [[reqQuery valueForKey:@"friends"] objectAtIndex: 0];
    NSLog(@"Found %i friends", [friendsList count]);
    return [[[reqQuery valueForKey:@"friends"] objectAtIndex:0] count];
    
}




// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * currentCell = nil;
    
    
    //Our cell is an object of the current view
    currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"testCell"];
    //lazy instantiation (at the last moment)
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleSubtitle  reuseIdentifier:@"testCell"];
        currentCell.imageView.image = [UIImage imageNamed: @"friend.png"];
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = friendsList[indexPath.row];
    currentCell.detailTextLabel.text = @"";
    
    //If current person is already subscribed to the current capsule, add checkmark
    for(int i = 0; i < [subscribedFriends count]; i++){
        PFObject * suscriptionsRecord = [subscribedFriends objectAtIndex:i];
        NSMutableArray * capsulesArray = [[NSMutableArray alloc]initWithArray:[suscriptionsRecord mutableArrayValueForKey:@"capsules"]];
        NSString * subscriber = [suscriptionsRecord valueForKey:@"userName"];
        if([capsulesArray containsObject:capsuleName] && [currentCell.textLabel.text isEqualToString:subscriber]){
            NSLog(@"%@ subscribed to  %@", subscriber, capsuleName);
            currentCell.accessoryType = UITableViewCellAccessoryCheckmark;
            currentCell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        // objectForKey:@"userName"];
        
        //NSLog(@"capsules: %@ , Subscriber: %@", capsules , subscriber);
        //NSLog(@"For user: %@", [suscriptionsRecord objectForKey:@"userName"]);
        
    }

    
    //NSLog(@"Friend at idx 0: %@", [subscribedFriends obj]);
    
    return currentCell;
}



- (IBAction)sendInvitations:(id)sender{
    //NSLog(@"Send invitations");
    //NSLog(@"Invites to be sent: %i", [newSubscriptions count]);
    //PFObject notification;
    for (int i = 0; i < [newSubscriptions count]; i++) {
        PFObject * notification = [PFObject objectWithClassName:@"Notifications"];
        [notification setObject:user.username forKey:@"from"];
        [notification setObject:newSubscriptions[i] forKey:@"to"];
        [notification setObject:capsuleName forKey:@"identifier"];
        [notification setObject:@"invitation" forKey:@"type"];
        [notification setObject:[NSString stringWithFormat:@"Hey %@, why don't you join my memory capsule '%@'? Do hurry to throw in some pictures and notes, this capsule will be sealed and burried soon...  ", newSubscriptions[i], capsuleName] forKey:@"message"];
        [notification setObject:[NSNumber numberWithBool:FALSE] forKey:@"read"];
        NSLog(@"Invitation sent for: %@", newSubscriptions[i]);
        [notification save];
    }
    
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Sending Invitations"
                                                      message:[NSString stringWithFormat:  @"Cool, you have invited %i more friend(s) to memory capsule %@",[newSubscriptions count], capsuleName]
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
    [message show];
    [self performSelector:@selector(dismissAlertViewAndReturn:) withObject:message afterDelay:3];
}

-(void)dismissAlertViewAndReturn:(UIAlertView *)alertView{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}



# pragma mark - helper functions
-(void) querySubscribedFriendsToCapsule{
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
    subscribedFriends = [[NSMutableArray alloc]initWithArray:[query findObjects]];
    //NSLog(@"found %i for what should had been %@", [subscribedFriends count], subscribedFriends[1]);
    /*[query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            NSLog(@"found: %i", [objects count]);
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];*/
    
    
    //subscribedFriends = [[NSMutableArray alloc]init];
    //PFQuery * subscribedFriendsQuery = [PFQuery queryWithClassName:@"CapsulesList"];
    //[subscribedFriendsQuery whereKey:@"capsules" containsString:@"hey"];
    //[subscribedFriendsQuery whereKey:@"capsules" ];
    //for(int i = 0; i < [subscribedFriendsQuery countObjects]; i++){
    //    NSLog(@"Objects: %@", [subscribedFriendsQuery getFirstObject]);
        //[subscribedFriends insertObject:[subscribedFriendsQuery ] atIndex:i];
        //NSLog(@">>> %@",subscribedFriends );
        
    //}
    //NSLog(@"Total friends: %i", [subscribedFriends count]);
    
    
}

@end
