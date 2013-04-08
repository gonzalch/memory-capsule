//
//  AcceptInviteViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "AcceptInviteViewController.h"
#import "FriendsViewController.h"
#import <MessageUI/MessageUI.h>

@interface AcceptInviteViewController : ViewController <UITextViewDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *inviteCode;
- (IBAction)confirmInvite:(id)sender;
@end
