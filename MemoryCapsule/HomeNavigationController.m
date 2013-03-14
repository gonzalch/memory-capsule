//
//  HomeNavigationController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 3/13/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "HomeNavigationController.h"

@interface HomeNavigationController ()

@end

@implementation HomeNavigationController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //[self.navigationBar setTintColor:[UIColor lightGrayColor]];
    self.navigationItem.title = @"Home";
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
