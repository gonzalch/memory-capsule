//
//  IndividualNotificationViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndividualNotificationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *h1;

@property (strong, nonatomic) IBOutlet UILabel *h2;

@property (strong, nonatomic) IBOutlet UITextView *message;

@property (strong, nonatomic) IBOutlet UIButton *acceptBtn;

@property (strong, nonatomic) IBOutlet UIButton *disregardBtn;

- (IBAction)acceptAction:(id)sender;

- (IBAction)disregardAction:(id)sender;

- (void) setDefaultViewComponents: (NSString *) h1Text forHeader2 :(NSString *) h2Text forMessageBox: (NSString*) messageText acceptBtnLabel: (NSString *) b1Text disregardBtnLabel: (NSString *) b2Text;

@end
