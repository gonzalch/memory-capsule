//
//  CapsulesViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/21/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "CreateCapsuleViewController.h"
#import "ImagesViewController.h"
#import <UIKit/UIKit.h>

@interface CapsulesViewController : ViewController <UITableViewDelegate, PFLogInViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIButton *createNewCapsuleButton;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

-(IBAction)createNewCapsuleButtonPressed:(id)sender;

@end
