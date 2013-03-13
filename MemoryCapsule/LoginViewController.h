//
//  LoginViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/12/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"

@interface LoginViewController : PFLogInViewController  <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>


@end
