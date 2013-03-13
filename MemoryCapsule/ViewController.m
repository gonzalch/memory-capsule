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
    NSLog(@"Calling viewDidAppear");
    [super viewDidAppear:animated];
    
    
    
    //HomeView
    if([self.title isEqual: @"homeViewController"]){
        NSLog(@"HomeViewController");
        //[self.messageLabel
    }
    
    
    //If the user is already logged in
    if([PFUser currentUser]){
        PFUser * currentUser = [PFUser currentUser];

        //NSLog(@"Current user: %@", [PFUser currentUser]);
        [self.messageLabel setText:[NSString stringWithFormat:@"Welcome, %@", [currentUser username]]];
        
    }
    
    
    // If the user is not logged in
    if(![PFUser currentUser]){
        // Login
        LoginViewController * login = [[LoginViewController alloc ]init];
        login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsTwitter | PFLogInFieldsFacebook | PFLogInFieldsSignUpButton | PFLogInFieldsPasswordForgotten;
        login.delegate = self;
        login.signUpController.delegate = self;
        [self presentViewController:login animated:YES completion:NULL];
    }


    
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
    [self dismissViewControllerAnimated:YES completion:NULL];
    NSLog(@"Calling didLogInUser");
    

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
