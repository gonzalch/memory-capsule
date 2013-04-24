//
//  IndividualNotificationViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface IndividualNotificationViewController : ViewController

@property (strong, nonatomic) IBOutlet UILabel *h1;

@property (strong, nonatomic) IBOutlet UILabel *h2;

@property (strong, nonatomic) IBOutlet UITextView *message;

@property (strong, nonatomic) IBOutlet UIButton *acceptBtn;

@property (strong, nonatomic) IBOutlet UIButton *disregardBtn;

- (IBAction)acceptAction:(id)sender;

- (IBAction)disregardAction:(id)sender;

- (void) passCustomData: (NSString *) capsule forHeader1: (NSString *) h1Text forHeader2 :(NSString *) h2Text forMessageBox: (NSString*) messageText;

@end
