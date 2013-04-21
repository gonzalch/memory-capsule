//
//  NotificationsController.m
//  ParseStarterProject
//
//  Created by James Yu on 12/29/11.
//  Copyright (c) 2011 Parse Inc. All rights reserved.
//

#import "NotificationsController.h"

@implementation NotificationsController{
    PFUser * user;
    NSMutableArray * capsuleIdentifiers;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        //user
        user = [PFUser currentUser];
        
        capsuleIdentifiers = [[NSMutableArray alloc]init];
        
        self.title = @"Inbox";
    
        // The className to query on
        self.className = @"Notifications";
        
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        
        // Whether the built-in pagination is enabled
        self.paginationEnabled = YES;
        
        // The number of objects to show per page
        self.objectsPerPage = 5;
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Parse

- (void)objectsDidLoad:(NSError *)error {
    [super objectsDidLoad:error];
    
    // This method is called every time objects are loaded from Parse via the PFQuery
}

- (void)objectsWillLoad {
    [super objectsWillLoad];
    
    // This method is called before a PFQuery is fired to get more objects
}


// Override to customize what kind of query to perform on the class. The default is to query for
// all objects ordered by createdAt descending.
- (PFQuery *)queryForTable {
    PFQuery *query = [PFQuery queryWithClassName:self.className];
    
    // If no objects are loaded in memory, we look to the cache first to fill the table
    // and then subsequently do a query against the network.
    if ([self.objects count] == 0) {
        query.cachePolicy = kPFCachePolicyCacheThenNetwork;
    }
    [query whereKey:@"to" containsString: user.username];
    [query orderByAscending:@"read"];
    
    return query;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Capsule Requests";
}


// Override to customize the look of a cell representing an object. The default is to display
// a UITableViewCellStyleDefault style cell with the label being the first key in the object.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object {
    NSLog(@"CellForRowAtIndexPath called");
    static NSString *CellIdentifier = @"currentCell";
    UITableViewCell *cell;// = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell
    NSString * hasBeenRead = [NSString stringWithFormat:@"%@",[object objectForKey: @"read"]];
    NSString * capsuleName = [object objectForKey:@"identifier"];
    NSLog(@"%@ , indexPath %i",capsuleName,indexPath.row);
    [capsuleIdentifiers setObject:capsuleName atIndexedSubscript:indexPath.row];
    NSLog(@"Total objects: %i",[capsuleIdentifiers count]);
    if([hasBeenRead isEqualToString:@"0"]){
        cell.imageView.image = [UIImage imageNamed: @"new-notification.png"];
        cell.textLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    }
    else{
        cell.imageView.image = [UIImage imageNamed: @"notification.png"];
        cell.textLabel.font =  [UIFont systemFontOfSize:16.0f];
        cell.textLabel.textColor = [UIColor darkGrayColor];
    }
    cell.textLabel.text = [object objectForKey:@"message"];
    cell.detailTextLabel.text = [object objectForKey:@"from"];
    
    return cell;

}


/*
 // Override if you need to change the ordering of objects in the table.
 - (PFObject *)objectAtIndex:(NSIndexPath *)indexPath {
 return [objects objectAtIndex:indexPath.row];
 }
 */

/*
 // Override to customize the look of the cell that allows the user to load the next page of objects.
 // The default implementation is a UITableViewCellStyleDefault cell with simple labels.
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForNextPageAtIndexPath:(NSIndexPath *)indexPath {
 static NSString *CellIdentifier = @"NextPage";
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
 }
 
 cell.selectionStyle = UITableViewCellSelectionStyleNone;
 cell.textLabel.text = @"Load more...";
 
 return cell;
 }
 */

#pragma mark - Table view data source


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
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = (UITableViewCell *)[(UITableView *)self.view cellForRowAtIndexPath:indexPath];
    //UIImage * currentImage = [cell.imageView image];
    NSString * messageType = [NSString stringWithFormat:@"%@",[cell.imageView.image accessibilityIdentifier]];
    
    if([messageType isEqualToString:@"new-notification.png"] || [messageType isEqualToString:@"notification.png"]){
        [self inviteMessageView:indexPath cell:cell ofType:messageType];
    }
    
    // Navigation logic may go here. Create and push another view controller.
    
}


#pragma mark - Helper functions

-(NSString *) capitalizeFirstLetter:(NSString *)text{
    text = [text stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[text substringToIndex:1] uppercaseString]];
    return text;
}

-(void) inviteMessageView: (NSIndexPath *) indexPath cell: (UITableViewCell *) cell ofType: (NSString *) messageType{
    IndividualNotificationViewController * notificationViewController = [[IndividualNotificationViewController alloc]initWithNibName:@"IndividualNotificationViewController" bundle:nil];
    [notificationViewController setTitle:@"Invite"];
    
    //customization
    NSString * from = [NSString stringWithFormat:@"From: %@", [self capitalizeFirstLetter:cell.detailTextLabel.text]];
    //NSString * from = [NSString stringWithFormat:@"From: %@",cell.detailTextLabel.text];
    NSString * title = [NSString stringWithFormat:@"Join:   %@",capsuleIdentifiers[indexPath.row]];
    NSString * messageBody = cell.textLabel.text;
    NSLog(@"Message type: %@", messageType);
    [self.navigationController pushViewController:notificationViewController animated:YES];
    [notificationViewController passCustomData:capsuleIdentifiers[indexPath.row] forHeader1:from forHeader2:title forMessageBox:messageBody]; 
}



@end
