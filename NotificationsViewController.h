//
//  NotificationsViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/11/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface NotificationsViewController : UITableViewController <UITableViewDelegate, PFLogInViewControllerDelegate>

@property (nonatomic, strong ) IBOutlet UITableView * tableView;

@end
