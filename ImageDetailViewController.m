//
//  ImageDetailViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/27/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()

@end

@implementation ImageDetailViewController
@synthesize imageView;
@synthesize selectedImage;
@synthesize deleteImageButton;
@synthesize imageName;

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
    
    self.imageView.image = selectedImage;
    
     [deleteImageButton addTarget:self action:@selector(deleteImageButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)deleteImageButtonTapped:(id)sender
{
    NSLog(@"Deleting image %@", imageName);
    
    PFQuery *imageQuery = [PFQuery queryWithClassName:@"UserPhoto"];
    [imageQuery whereKey:@"objectId" equalTo:imageName];
    PFObject *imageObject = [imageQuery getFirstObject];
    //NSLog(@"Deleting image %@", [imageObject valueForKey:@"objectId"]);

    [imageObject delete];
    
    if( [self.ptrToDelUser respondsToSelector:@selector(deleteImageAgent:)] )
		[self.ptrToDelUser deleteImageAgent:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
