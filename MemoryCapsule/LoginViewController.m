//
//  LoginViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/12/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "LoginViewController.h"



@implementation LoginViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.9];//colorWithPatternImage:[UIImage imageNamed:@"full_jar.png"]];
	self.logInView.usernameField.backgroundColor = [UIColor colorWithWhite: 0.5 alpha: 1.0];
    self.logInView.passwordField.backgroundColor = [UIColor colorWithWhite: 0.5 alpha:1.0];
    self.logInView.logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login1.png"]];
    // Do any additional setup after loading the view.
}


@end
