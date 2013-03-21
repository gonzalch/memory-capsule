//
//  InviteViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/20/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface InviteViewController : ViewController<MFMailComposeViewControllerDelegate, UITextViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *subject;
@property (weak, nonatomic) IBOutlet UITextView *message;
-(IBAction)sendInvite:(id)sender;


@end
