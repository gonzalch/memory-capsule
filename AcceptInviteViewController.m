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
        [friendsList addObject:newFriendName forKey:@"friends"];
        [friendsList save];
    }
    
    /*
    PFUser * user = [PFUser currentUser];
    PFQuery * query = [PFQuery queryWithClassName:@"FriendsList"];
    [query whereKey:@"unserName" equalTo:[user username]];
    PFObject *newFriend = [query getFirstObject];
    newFriend addUniqueObject
      /*
        NSLog(@"CreateButtonPressed");
        PFUser *user = [PFUser currentUser];
        //NSArray *array = [NSArray arrayWithObjects:newCapsuleName, nil];
        PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
        [query whereKey:@"userName" equalTo:[user username]];
        PFObject *newCapsule = [query getFirstObject];
        //PFObject *newCapsule = [PFObject objectWithClassName:@"CapsulesList"];
        [newCapsule addUniqueObjectsFromArray:[NSArray arrayWithObjects:newCapsuleName, nil] forKey:@"capsules"];
        [newCapsule setObject:[user username] forKey:@"userName"];
        [newCapsule save];
      */  
        /*
         [newCapsule saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
         if (!error) {
         [self dismissViewControllerAnimated:YES completion:Nil];
         }
         }];
         */


}

-(void) customizeInputFields{
    
    UITextField * inviteCode = self.view.subviews[1];
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
