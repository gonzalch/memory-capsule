//
//  HomeViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()

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
    viewList = [[NSMutableArray alloc] initWithObjects:@"Capsules", @"Friends",@"Notifications", @"Map", nil];
    addList = [[NSMutableArray alloc] initWithObjects: @"New Capsule", @"Invite friend",@"Accept invitation", nil];
    viewListImg = [[NSArray alloc] initWithObjects:@"jar-32.png", @"friend.png",@"inbox-document-icon.png",@"app-map-icon.png", nil];
    addListImg = [[NSArray alloc] initWithObjects: @"jar-plus.png",@"friend-add2.png",@"friend-confirm.png",nil ];
    
    
    [self.tableView setAllowsSelection:YES];
    self.tableView.delegate = self;
    //self.tableView.dataSource = self;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}





#pragma mark - TableView dataSource methods
//We want 2 sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath {    //
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString * selectedRow = cell.textLabel.text;
    
    if([selectedRow  isEqual: @"Friends"]){
        [super animateTabBarTransition:2];
    }
    
    if ([selectedRow isEqual: @"Capsules"]) {
        [super animateTabBarTransition:1];
    }
    
    if ([selectedRow isEqualToString: @"New Capsule"]){
        [super goToCreateCapsuleView];
    }
    
    else if ([selectedRow isEqualToString: @"Invite friend"]){
        [super gotoInviteFriendView];
    }
    
    else if ([selectedRow isEqualToString: @"Notifications"]){
        [self goto_notificationsView];
    }

    
}


// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch(section){
        case 0: return [viewList count]; break;
        case 1: return [addList count]; break;
        default: NSLog(@"My friend, you are on crack!"); return 999;
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch(section){
        case 0: return @"View"; break;
        case 1: return @"Add";break;
        default: return @"My friend, you are on crack!";
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
        case 0: currentCell.textLabel.text = [viewList objectAtIndex:indexPath.row];
            imageName = [viewListImg objectAtIndex:indexPath.row];
            currentCell.imageView.image = [UIImage imageNamed:imageName];
            break;
        case 1: currentCell.textLabel.text = [addList objectAtIndex:indexPath.row];
            imageName = [addListImg objectAtIndex:indexPath.row];
            currentCell.imageView.image = [UIImage imageNamed:imageName];
            break;
    }
    
    
    
    return currentCell;
}




#pragma mark - IBAction methods

-(IBAction)goto_friendsView:(id)sender{
    [self.tabBarController setSelectedIndex:2];
}

-(IBAction)goto_capsulesView:(id)sender{
    [self.tabBarController setSelectedIndex:1];
}


-(IBAction) goto_notificationsView{
    NotificationsViewController * notificationsViewController = [[NotificationsViewController alloc]initWithStyle:UITableViewStyleGrouped]; //ViewController * notificationsViewController = [[NotificationsViewController alloc] initWithClassName:@"Notifications"];
                                                                 //initWithNibName:@"NotificationsViewController" bundle:nil];
    [self.navigationController pushViewController:notificationsViewController animated:YES];
}

-(IBAction) animateView: (id) sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve: UIViewAnimationCurveLinear];
    [UIView setAnimationDuration: 0.8f];
    
}

@end
