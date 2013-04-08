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
    
    NSLog(@"this shit was called");
    
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
    return currentCell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
