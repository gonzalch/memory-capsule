//
//  InviteFriendsToCapsuleViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 4/7/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "InviteFriendsToCapsuleViewController.h"

@interface InviteFriendsToCapsuleViewController ()

@end

@implementation InviteFriendsToCapsuleViewController
@synthesize tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - TableView dataSource methods
//We want 1 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString * selectedRow = cell.textLabel.text;
    NSLog(@"selected row for %@", selectedRow);
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"Querying database for friendslist");
    
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
    switch(section){
        case 0: return @"Friends"; break;
        default: return @"I assure you, I'm not on crack!";
    }
}


// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"this shit was called for InviteFriendsToCapsuleViewController");
    
    UITableViewCell * currentCell = nil;
    
    //Our cell is an object of the current view
    currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"testCell"];
    //lazy instantiation (at the last moment)
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault  reuseIdentifier:@"testCell"];
        currentCell.imageView.image = [UIImage imageNamed: @"friend.png.png"];
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = friendsList[indexPath.row];
    return currentCell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
