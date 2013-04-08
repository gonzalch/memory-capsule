//
//  AcceptInviteViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "AcceptInviteViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AcceptInviteViewController ()

@end

@implementation AcceptInviteViewController
@synthesize inviteCode;

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
    
    [self customizeInputFields];
    
}


- (IBAction)confirmInvite:(id)sender {
    NSLog(@"Confirm invite button pressed");
    
}


-(void) customizeInputFields{
    
    UITextField * inviteCode = self.view.subviews[1];
    [inviteCode.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [inviteCode.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [inviteCode.layer setBorderWidth: 1.0];
    [inviteCode.layer setCornerRadius:8.0f];
    [inviteCode.layer setMasksToBounds:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
