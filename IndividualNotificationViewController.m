//
//  IndividualNotificationViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "IndividualNotificationViewController.h"

@interface IndividualNotificationViewController ()

@end



@implementation IndividualNotificationViewController

@synthesize h1;
@synthesize h2;
@synthesize message;
@synthesize acceptBtn;
@synthesize disregardBtn;


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
    
    
}

- (IBAction)acceptAction:(id)sender {
    NSLog(@"acceptAction");
    [self.h1 setText:@"testing"];
}

- (IBAction)disregardAction:(id)sender {
    NSLog(@"disregardAction");
    [self.navigationController popViewControllerAnimated:YES];
}


- (void) setDefaultViewComponents: (NSString *) h1Text forHeader2 :(NSString *) h2Text forMessageBox: (NSString*) messageText acceptBtnLabel: (NSString *) b1Text disregardBtnLabel: (NSString *) b2Text{
    NSLog(@"Calling setDefaultViewComponents");
    [self.h1 setText:h1Text];
    [self.h2 setText: h2Text];
    [self.message setText: messageText];
    [self.acceptBtn.titleLabel setText: b1Text];
    [self.disregardBtn.titleLabel setText: b2Text];
 
}

@end
