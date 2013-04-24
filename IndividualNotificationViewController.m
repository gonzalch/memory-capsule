//
//  IndividualNotificationViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "IndividualNotificationViewController.h"

@interface IndividualNotificationViewController (){
    PFUser * user;
    PFQuery * query;
    NSString * capsuleName;
}
    
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
    
    //set the user
    user = [PFUser currentUser];
    
    //target table
    query =  [PFQuery queryWithClassName: @"Notifications"];
    
    //confirm message as read, wait for view to completely load..
    [NSTimer scheduledTimerWithTimeInterval:.03 target:self selector:@selector(confirmMessageAsRead) userInfo:nil repeats:NO];
    
}

- (IBAction)acceptAction:(id)sender {
    NSLog(@"acceptAction");
    
    //Add capsule to user's list of subscribed capsules
    PFQuery *addSelfToCapsuleQuery = [PFQuery queryWithClassName:@"CapsulesList"];
    [addSelfToCapsuleQuery whereKey:@"userName" equalTo:[user username]];
    PFObject * newCapsule = [addSelfToCapsuleQuery getFirstObject];
    [newCapsule addUniqueObjectsFromArray:[NSArray arrayWithObjects:capsuleName, nil] forKey:@"capsules"];
    [newCapsule setObject:[user username] forKey:@"userName"];
    [newCapsule save];
    
    // Confirmation message
    UIAlertView *alertMessage = [[UIAlertView alloc] initWithTitle:@"Done!"
                                                      message:[NSString stringWithFormat:  @"You can now contribute to the following memory capsule:  %@.",capsuleName]
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
    [alertMessage show];
    [self performSelector:@selector(dismissAlertViewAndReturn:) withObject:alertMessage afterDelay:2];
}

-(void)dismissAlertViewAndReturn:(UIAlertView *)alertView{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}



- (IBAction)disregardAction:(id)sender {
    NSLog(@"disregardAction");
    [self.navigationController popViewControllerAnimated:YES];
}


- (void) passCustomData: (NSString *) capsule forHeader1: (NSString *) h1Text forHeader2 :(NSString *) h2Text forMessageBox: (NSString*) messageText{
    NSLog(@"Calling setDefaultViewComponents");
    self->capsuleName = capsule;
    NSLog(@"CapsuleName is: %@", self->capsuleName);
    [self.h1 setText:h1Text];
    [self.h2 setText: h2Text];
    [self.message setText: messageText];
}

-(void) confirmMessageAsRead{
    if(query == nil){
        NSLog(@"empty query!!!");
        query =  [PFQuery queryWithClassName: @"Notifications"];
    }
    
    //Set the current message as already read!
    [query whereKey:@"to" containsString: [user.username lowercaseString]];
    [query whereKey:@"message" containsString:self.message.text];
    
    if([query countObjects] == 1){
        PFObject * currentInvitation = [query getFirstObject];
        [currentInvitation  setObject:[NSNumber numberWithBool:TRUE] forKey:@"read"];
        [currentInvitation save];
    }
    
    else
        NSLog(@"There are %i possible notifications that match this description, ignoring request...", [query countObjects]);
}

@end
