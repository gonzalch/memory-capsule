//
//  NotificationsViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/11/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "NotificationsViewController.h"

@interface NotificationsViewController (){
    PFUser * user ;
    //NSMutableArray * cells;
}

@end

@implementation NotificationsViewController

@synthesize tableView;


- (id)initWithStyle:(UITableViewStyle)style
{   
    user = [PFUser currentUser];
    self = [super initWithStyle:style];
    if (self) {
        [self.tableView reloadData];
        self.className = @"Notifications";
        //self.textKey = @"from";
        self.pullToRefreshEnabled = YES;
        self.paginationEnabled = YES;
        self.objectsPerPage = 10;
        [self.navigationController setTitle:@"Notifications"];
    }
    return self;
}


-(PFQuery *) queryForTable{
    PFQuery * query = [PFQuery queryWithClassName: self.className];
    // If no objects are loaded in memory, we look at the cache first to fill the table. Subsequently,
    // do a query against the network
    if(self.objects.count == 0){
        query.cachePolicy = kPFCachePolicyCacheThenNetwork;
        [query whereKey:@"to" containsString: user.username];
        
    }
    [query orderByAscending:@"read"];
    return query;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell
    NSString * hasBeenRead = [NSString stringWithFormat:@"%@",[object objectForKey: @"read"]];
    NSLog(@"-%@-",hasBeenRead);
    if([hasBeenRead isEqualToString:@"0"]){
        cell.imageView.image = [UIImage imageNamed: @"new-notification.png"];
        cell.textLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    }
    else{
        cell.imageView.image = [UIImage imageNamed: @"notification.png"];
        cell.textLabel.font =  [UIFont systemFontOfSize:16.0f];
        cell.textLabel.textColor = [UIColor darkGrayColor];
    }
    
    cell.textLabel.text = [object objectForKey:@"message" ];
    cell.detailTextLabel.text = [object objectForKey:@"from"];
    
    
    //[cells addObject: @"test"];
    //NSLog(@"%i",cells.count);
    //Save the cell into a array
    //[cells addObject:cell.textLabel.text];//insertObject:cell atIndex:indexPath.row];
    return cell;


}


#pragma mark - Table view data source

 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
 {
     // Return the number of sections.
     return 1;
 }



#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UITableViewCell *cell = (UITableViewCell *)[(UITableView *)self.view cellForRowAtIndexPath:indexPath];
    //UIImage * currentImage = [cell.imageView image];
    NSString * messageType = [NSString stringWithFormat:@"%@",[cell.imageView.image accessibilityIdentifier]];
    
    if([messageType isEqualToString:@"new-notification.png"]){
        IndividualNotificationViewController * notificationViewController = [[IndividualNotificationViewController alloc]initWithNibName:@"IndividualNotificationViewController" bundle:nil];
        [notificationViewController setTitle:@"Invite"];
        //specific customization
        
        NSString * from = [NSString stringWithFormat:@"From: %@",cell.detailTextLabel.text];
        from = [self capitalizeFirstLetter:from];
        
        [self.navigationController pushViewController:notificationViewController animated:YES];
        [notificationViewController  setDefaultViewComponents:from forHeader2:@"Test" forMessageBox:@"Test" acceptBtnLabel:@"Test" disregardBtnLabel:@"Test"];//setDefaultViewComponents:@"test" forHeader2:@"test"  forMessageBox:@"test"  acceptBtn:@"test" disregardBtn:@"test" ];
    }
    
    // Navigation logic may go here. Create and push another view controller.

}



/*
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 PFQuery * notificationsQuery = [PFQuery queryWithClassName:@"Notifications"];
 [notificationsQuery whereKey:@"to" equalTo: user.username];
 return [notificationsQuery countObjects];
 
 }


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
*/

/*
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 
 //PFQueryTableViewController * controller = [[PFQueryTableViewController alloc]initWithClassName:@"Notifications"];
 [self setTitle:@"Notifications"];
 [self.tableView setAllowsSelection:YES];
 self.tableView.delegate = self;
 // Uncomment the following line to preserve selection between presentations.
 // self.clearsSelectionOnViewWillAppear = NO;
 
 // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
 // self.navigationItem.rightBarButtonItem = self.editButtonItem;
 }
 */

-(NSString *) capitalizeFirstLetter:(NSString *)text{
    text = [text stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[text substringToIndex:1] uppercaseString]];
    NSLog(@"Capitalization:  %@",text);
    return text;
}


@end
