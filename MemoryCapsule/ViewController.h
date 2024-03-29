//
//  ViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/6/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"

@interface ViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>{
}

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (nonatomic, retain) UIBarButtonItem * logoutButton;

-(IBAction)logoutButtonPressed:(id)sender;
-(void) animateTabBarTransition:(NSInteger) destinationTabIdx;
-(void) push_InviteFriendView;
-(void) push_CreateCapsuleView;
@end
