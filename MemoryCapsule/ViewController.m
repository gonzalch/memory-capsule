//
//  ViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/6/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import "InviteViewController.h"
#import "AcceptInviteViewController.h"
#import "CreateCapsuleViewController.h"


@interface ViewController ()
@end

@implementation ViewController
@synthesize logoutButton = _logoutButton;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    //Add logout button
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"logout"style:UIBarButtonItemStyleDone target:self action:@selector(logoutButtonPressed:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    //PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    //[testObject setObject:@"bar" forKey:@"foo"];
    //[testObject save];
	// Do any additional setup after loading the view, typically from a nib.
}




-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"TabViewController: %@", self.title);
    [super viewDidAppear:animated];
    
    
    
    // Set userName label
    if([PFUser currentUser]){
        PFUser * currentUser = [PFUser currentUser];
        [self.messageLabel setText:[NSString stringWithFormat:@"%@", [currentUser username]]];
        
    }
    
    
    // If the user is not logged in, we need to send him back to the login screen
    if(![PFUser currentUser]){
        // Login
        LoginViewController * login = [[LoginViewController alloc ]init];
        login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsTwitter | PFLogInFieldsFacebook | PFLogInFieldsSignUpButton | PFLogInFieldsPasswordForgotten;
        login.delegate = self;
        login.signUpController.delegate = self;
        [self presentViewController:login animated:YES completion:NULL];
    }
}



-(IBAction)logoutButtonPressed:(id)sender{
    NSLog(@"logout is pressed!");
    // Login
    LoginViewController * login = [[LoginViewController alloc ]init];
    login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsTwitter | PFLogInFieldsFacebook | PFLogInFieldsSignUpButton | PFLogInFieldsPasswordForgotten;
    login.delegate = self;
    login.signUpController.delegate = self;
    [self presentViewController:login animated:YES completion:NULL];
    
}

/*********************************
 * Handle login & signup attempts
 ********************************/
-(void) logInViewController: (PFLogInViewController *)  logInController didLogInUser:(PFUser *)user
{
    NSLog(@"Calling HomeNavigationController -> didLogInUser");
    [self dismissViewControllerAnimated:YES completion:NULL];
}


-(void) signupViewController: (PFSignUpViewController *) signupController didSignupUser: (PFUser *) user
{
    NSLog(@"Calling HomeNavigationController -> didSignupUser");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) logInViewControllerDidCancelLogIn:(PFLogInViewController *)logInController
{
    NSLog(@"Calling HomeNavigationController -> loginViewControllerDidCancelLogIn");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void) signUpViewControllerDidCancelLogin: (PFSignUpViewController *) signupController{
    NSLog(@"Calling HomeNavigationController -> signUpViewControllerDidCancelLogin");
    [self dismissViewControllerAnimated:YES completion:nil];
}




#pragma mark - Animation methods

-(void) animateTabBarTransition:(NSInteger) destinationTabIdx{
    
    UIView * fromView = self.tabBarController.selectedViewController.view;
    UIView * toView = [[self.tabBarController.viewControllers objectAtIndex:destinationTabIdx] view];
    
    
    [UIView transitionFromView:fromView toView:toView duration:0.8
                       options:(destinationTabIdx > self.tabBarController.selectedIndex ? UIViewAnimationOptionTransitionFlipFromLeft: UIViewAnimationOptionTransitionFlipFromRight)
                    completion:^(BOOL finished) {
                        if (finished) {
                            self.tabBarController.selectedIndex = destinationTabIdx;
                        }
                    }];
}



-(void) gotoInviteFriendView{
    InviteViewController * inviteFriendsViewContoller = [[InviteViewController alloc]
                                                         initWithNibName:@"InviteViewController" bundle:nil];
    [inviteFriendsViewContoller setTitle:@"E-mail Invite"];
    [self.navigationController pushViewController:inviteFriendsViewContoller animated:YES];
}

-(void) goToCreateCapsuleView{
    CreateCapsuleViewController * createCapsuleViewContoller = [[CreateCapsuleViewController alloc]
                                                                initWithNibName:@"CreateCapsuleViewController" bundle:nil];
    [createCapsuleViewContoller setTitle:@"Create capsule"];
    [self.navigationController pushViewController:createCapsuleViewContoller animated:YES];
}

@end
