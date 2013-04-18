//
//  NotificationsViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/11/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"
#import "IndividualNotificationViewController.h"

@interface NotificationsViewController : PFQueryTableViewController <UITableViewDelegate, PFLogInViewControllerDelegate>

@property (nonatomic, strong ) IBOutlet UITableView * tableView;

@end
