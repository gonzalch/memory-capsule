//
//  ImagesViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#include <stdlib.h>
#import "ImageDetailViewController.h"
#import "InviteFriendsToCapsuleViewController.h"

@interface ImagesViewController : ViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate, SendBackDelegate>
{
    IBOutlet UIScrollView *photoScrollView;
    IBOutlet UIButton *addButton;
    NSMutableArray *allImages;
    NSString *capsuleName;
}

@property (strong, nonatomic) IBOutlet UIButton *inviteFriendsToCapsuleButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil capsuleName:(NSString *)capsuleNameOrNil;

- (void)setUpImages:(NSArray *)images;
- (void)buttonTouched:(id)sender;

@end
