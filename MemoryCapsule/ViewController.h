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
    IBOutlet UIBarButtonItem * logoutButton;
}

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (nonatomic, retain) UIBarButtonItem * logoutButton;


-(IBAction)logoutButtonPressed:(id)sender;


@end
