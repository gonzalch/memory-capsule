//
//  ImageDetailViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/27/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ImageDetailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ImageDetailViewController (){
    PFQuery * commentsQuery;
    PFUser * user;
    int commentRows;
}

@end

@implementation ImageDetailViewController
@synthesize imageView;
@synthesize selectedImage;
@synthesize deleteImageButton;
@synthesize imageName;
@synthesize capsuleName;
@synthesize commentsTableView;
@synthesize commentsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    
    NSLog(@"viewWillAppear called");
    
    // Yes, this is a hack
    capsuleName = self.navigationItem.title;
    
    // Query comments database
    user = [PFUser currentUser];
    commentsQuery = [PFQuery queryWithClassName:@"Comments"];
    NSLog(@"%@",[commentsQuery findObjects]);
    [commentsQuery whereKey:@"imageID" equalTo:imageName];
    [commentsQuery whereKey:@"capsuleName" equalTo:capsuleName];
    //NSLog(@"%i comments found",[commentsQuery countObjects]);
    //commentRows = [commentsQuery countObjects];
    //commentsArray = [[NSMutableArray alloc] initWithArray:[commentsQuery findObjects]];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.imageView.image = selectedImage;
    
    //self.title = @"Comments";
    
    // Delete button customization
    [deleteImageButton addTarget:self action:@selector(deleteImageButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)deleteImageButtonTapped:(id)sender
{
    NSLog(@"Deleting image %@", imageName);
    
    PFQuery *imageQuery = [PFQuery queryWithClassName:@"UserPhoto"];
    [imageQuery whereKey:@"objectId" equalTo:imageName];
    PFObject *imageObject = [imageQuery getFirstObject];

    [imageObject delete];
    
    if( [self.ptrToDelUser respondsToSelector:@selector(deleteImageAgent:)] )
		[self.ptrToDelUser deleteImageAgent:self];
}



# pragma mark - TableView dataSource methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Subscribed to '%@'", capsuleName];
}*/
 
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    NSLog(@"selected row for %i", indexPath.row);
}


- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(3_0){
    
    NSLog(@"deselected");
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return commentRows;
}




// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * currentCell = nil;
    
    //Our cell is an object of the current view
    currentCell = [self.commentsTableView dequeueReusableCellWithIdentifier:@"testCell"];
    //lazy instantiation (at the last moment)
    
    if(currentCell == nil){
        currentCell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleSubtitle  reuseIdentifier:@"testCell"];
        currentCell.imageView.image = [UIImage imageNamed: @"friend.png"];
        [currentCell.textLabel setFont:[UIFont systemFontOfSize:17.0]];
    }
    
    NSObject * currentComment = commentsArray[indexPath.row];
    NSLog(@"current %@", commentsArray[indexPath.row]);
    //Depending on our current section, populate the cells
    currentCell.textLabel.text = [currentComment valueForKey:@"comment"];
    currentCell.detailTextLabel.text =  [currentComment valueForKey:@"by"];
    
    return currentCell;
}


- (IBAction)addCommentButtonPressed:(id)sender {
    NSLog(@"Add comment pressed");
    
    CommentsViewController * commentModalView = [[CommentsViewController alloc]initWithNibName:@"CommentsViewController" bundle:nil];
    //UIViewController *sampleView = [[UIViewController alloc] init];
    [commentModalView setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [commentModalView setCapsuleValues:capsuleName imageID:imageName];
    [commentModalView linkToParentView:self];
    [self presentViewController:commentModalView animated:YES completion:nil];
    //[self  presentedViewControllerler:sampleView animated:YES];*/
    
}

- (IBAction)reload:(id)sender {
    NSLog(@"reload data called");
    
    [self.view setNeedsDisplay];
    //[self.commentsTableView reloadData];
    ///NSInteger cellCount = [self.commentsTableView numberOfRowsInSection:0];
    [self.commentsTableView beginUpdates];
    [self.commentsTableView reloadData];
    //[self.commentsTableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForItem:0 inSection:0]] withRowAnimation:UITableViewRowAnimationTop];
    [self.commentsTableView endUpdates];
}



@end
