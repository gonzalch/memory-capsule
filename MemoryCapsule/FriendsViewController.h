//
//  FriendsViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/18/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface FriendsViewController : ViewController <UITableViewDelegate, PFLogInViewControllerDelegate>{

}
@property (nonatomic, strong ) IBOutlet UITableView * tableView;
@property (nonatomic, retain) IBOutlet UIButton * inviteFriendsButton; 

-(IBAction)inviteFriendButtonPressed:(id)sender;


@end
