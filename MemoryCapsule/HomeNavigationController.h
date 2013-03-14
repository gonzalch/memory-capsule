//
//  HomeNavigationController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/13/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"


@interface HomeNavigationController : UINavigationController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>{
    
    IBOutlet UIBarButtonItem * logoutButton;

}



@end
