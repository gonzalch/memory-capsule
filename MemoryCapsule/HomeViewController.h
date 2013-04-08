//
//  HomeViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/17/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"

@interface HomeViewController : ViewController <UITableViewDelegate>{
    
}


@property (nonatomic, strong ) IBOutlet UITableView * tableView;
@property (nonatomic, retain) NSMutableArray * viewList;
@property (nonatomic, retain) NSMutableArray * addList;
@property (nonatomic, retain) NSArray * viewListImg;
@property (nonatomic, retain) NSArray * addListImg;


-(IBAction)goto_friendsView:(id)sender;

@end
