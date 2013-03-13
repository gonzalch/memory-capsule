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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
    //PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    //[testObject setObject:@"bar" forKey:@"foo"];
    //[testObject save];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //Check if current user is logged in
    if([PFUser currentUser]){
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"logged in!" message:@"You are logged in!" delegate:nil cancelButtonTitle:@"Log me out" otherButtonTitles:nil, nil];
        [alert show];
        [PFUser logOut];
    }
    
    
    // Login
    LoginViewController * login = [[LoginViewController alloc ]init];
    //PFLogInViewController * login = [[PFLogInViewController alloc]init];
    login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsTwitter | PFLogInFieldsFacebook | PFLogInFieldsSignUpButton;
    login.delegate = self;
    login.signUpController.delegate = self;
    [self presentModalViewController:login animated: YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*********************************
 * Handle login & signup attempts
 ********************************/

// Upon user login, dismiss the login menu
-(void) logInViewController: (PFLogInViewController *)  logInController didLogInUser:(PFUser *)user
{
    [self dismissModalViewControllerAnimated:YES];

}

-(void) logInViewControllerDidCancelLogIn:(PFLogInViewController *)logInController
{
    [self dismissModalViewControllerAnimated:YES];
    
}

-(void) signupViewController: (PFSignUpViewController *) signupController didSignupUser: (PFUser *) user
{
    [self dismissModalViewControllerAnimated:YES];
}

-(void) signUpViewControllerDidCancelLogin: (PFSignUpViewController *) signupController{
    [self dismissModalViewControllerAnimated:YES];
}
 
@end
