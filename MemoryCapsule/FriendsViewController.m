//
//  FriendsViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/18/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "FriendsViewController.h"
#import "InviteViewController.h"
#import "AcceptInviteViewController.h"

@interface FriendsViewController (){
    NSMutableArray * friendsList;
}
@end

@implementation FriendsViewController
@synthesize inviteFriendsButton;
@synthesize tableView;
@synthesize acceptInviteButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView reloadData];
    
    // Set buttons' actions
    [inviteFriendsButton addTarget:self action:@selector(inviteFriendButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [acceptInviteButton addTarget: self action:@selector(acceptInviteButtonPressed:)forControlEvents:UIControlEventTouchUpInside];
    
    [self.tableView setAllowsSelection:YES];
    self.tableView.delegate = self;
    
    
}



-(IBAction)inviteFriendButtonPressed:(id)sender{
    NSLog(@"InviteFriendsButton pressed");
    InviteViewController * inviteFriendsViewContoller = [[InviteViewController alloc]
                                                         initWithNibName:@"InviteViewController" bundle:nil];
    [inviteFriendsViewContoller setTitle:@"Add a friend"];
    [self.navigationController pushViewController:inviteFriendsViewContoller animated:YES];
    
}

-(IBAction) acceptInviteButtonPressed: (id)sender
{
    NSLog(@"AcceptInvite button pressed");
    AcceptInviteViewController * acceptInviteViewController = [[AcceptInviteViewController alloc] initWithNibName:@"AcceptInviteViewController" bundle:nil];
    [acceptInviteViewController setTitle: @"Accept Invite"];
    [self.navigationController pushViewController:acceptInviteViewController animated:YES];
}


#pragma mark - TableView dataSource methods
//We want 2 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath {    //
    
    NSLog(@"didSelectRowAtIndexPath called");
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString * selectedRow = cell.textLabel.text;
    NSLog(@"selected row for %@", selectedRow);
    //if([selectedRow  isEqual: @"Friends"]){
    //    [super animateTabBarTransition:2];
    //}
    
    
}


// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"numberOfRowsInSection called");
    
    //parse in list of friends for current user
    PFUser * user = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"FriendsList"];
    [query whereKey:@"userName" equalTo: [user username]];
    //NSLog(@"%@", [PFUser currentUser]);
    NSArray * reqQuery = [query findObjects];
    friendsList = [[reqQuery valueForKey:@"friends"] objectAtIndex: 0];
    NSLog(@"Found %i friends", [friendsList count]);
    return [[[reqQuery valueForKey:@"friends"] objectAtIndex:0] count];
    
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSLog(@"titleForHeaderInSection called");
    
    switch(section){
        case 0: return @"Friends"; break;
        default: return @"My friend, you are on crack!";
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
        currentCell.imageView.image = [UIImage imageNamed: @"friend.png"]; //etImage:[UIImage imageNamed:@"default.png"]];
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = friendsList[indexPath.row];
    return currentCell;
}





@end
