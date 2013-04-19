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
    [self customizeInputFields];
    
}


- (IBAction)confirmInvite:(id)sender {
    NSLog(@"Confirm invite button pressed");
    NSLog(@"invite code: %@", self.inviteCode.text);
    PFUser *user = [PFUser currentUser];
    //get new friend's name
    PFUser * newFriend = [PFQuery getUserObjectWithId:self.inviteCode.text];
    if(newFriend != nil){
        NSString * newFriendName = [newFriend username];
        
        //Add new friend to our list of friends
        PFQuery * friendsQuery = [PFQuery queryWithClassName:@"FriendsList"];
        [friendsQuery whereKey:@"userName" equalTo:[user username]];
        PFObject * friendsList = [friendsQuery getFirstObject];
        [friendsList addUniqueObjectsFromArray:[NSArray arrayWithObjects:newFriendName,nil] forKey:@"friends"];
        [friendsList save];
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Done!"
                                                          message:[NSString stringWithFormat:  @"You have successfully added '%@' to your list of friends.",newFriendName]
                                                         delegate:nil
                                                cancelButtonTitle:nil
                                                otherButtonTitles:nil];
        [message show];
        [self performSelector:@selector(dismissAlertViewAndReturn:) withObject:message afterDelay:2];
    }
}

-(void)dismissAlertViewAndReturn:(UIAlertView *)alertView{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) customizeInputFields{
    
    //UITextField * invitationCode = self.view.subviews[1];
    [inviteCode.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [inviteCode.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [inviteCode.layer setBorderWidth: 1.0];
    [inviteCode.layer setCornerRadius:8.0f];
    [inviteCode.layer setMasksToBounds:YES];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"Return");
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
