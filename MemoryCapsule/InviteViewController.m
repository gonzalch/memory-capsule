//
//  InviteViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/20/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "InviteViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface InviteViewController ()

@end

@implementation InviteViewController
@synthesize email;
@synthesize subject;
@synthesize message;

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
    [self customizeInputFields];
}

-(void) customizeInputFields{
    UITextField * emailBox = self.view.subviews[1];
    [emailBox.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [emailBox.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [emailBox.layer setBorderWidth: 1.0];
    [emailBox.layer setCornerRadius:8.0f];
    [emailBox.layer setMasksToBounds:YES];
    
    UITextField * subjectBox = self.view.subviews[5];
    [subjectBox.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [subjectBox.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [subjectBox.layer setBorderWidth: 1.0];
    [subjectBox.layer setCornerRadius:8.0f];
    [subjectBox.layer setMasksToBounds:YES];
    
    UITextView * messageBox = self.view.subviews[3];
    [messageBox.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [messageBox.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [messageBox.layer setBorderWidth: 1.0];
    [messageBox.layer setCornerRadius:8.0f];
    [messageBox.layer setMasksToBounds:YES];
    messageBox.delegate = self;
}


- (IBAction)sendInvite:(id)sender {
    MFMailComposeViewController * mailman = [[MFMailComposeViewController alloc]init];
    mailman.mailComposeDelegate = self;
    NSArray * emailDestinations = [[NSArray alloc] initWithObjects:@"gonzalo.parajon@gmail.com", nil];
    [mailman setToRecipients:emailDestinations];
    [mailman setSubject: self.subject.text];
    [mailman setMessageBody:self.message.text isHTML:YES];
    [self presentViewController:mailman animated:YES completion: nil];
    NSLog(@"RecipientList %@", emailDestinations);
    NSLog(@"Subject: %@", self.subject.text);
    NSLog(@"Message: %@", self.message.text);
}

//Remove the email viewcontroller when done
-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
        [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma - mark UITextViewDelegate methods
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    // Any new character added is passed in as the "text" parameter
    if ([text isEqualToString:@"\n"]) {
        // Be sure to test for equality using the "isEqualToString" message
        [textView resignFirstResponder];
        // Return FALSE so that the final '\n' character doesn't get added
        return FALSE;
    }
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}

@end
