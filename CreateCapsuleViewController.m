//
//  CreateCapsuleViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "CreateCapsuleViewController.h"

@interface CreateCapsuleViewController ()
@end

@implementation CreateCapsuleViewController
@synthesize capsuleName;
@synthesize createButton;

NSString *newCapsuleName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [createButton addTarget:self action:@selector(createButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"You entered %@",textField.text);
    newCapsuleName = textField.text;
    [textField resignFirstResponder];
    return YES;
}

-  (IBAction)createButtonPressed:(id)sender
{
    NSLog(@"CreateButtonPressed");
    PFUser *user = [PFUser currentUser];
    //NSArray *array = [NSArray arrayWithObjects:newCapsuleName, nil];
    PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
    [query whereKey:@"userName" equalTo:[user username]];
    PFObject *newCapsule = [query getFirstObject];
    //PFObject *newCapsule = [PFObject objectWithClassName:@"CapsulesList"];
    [newCapsule addUniqueObjectsFromArray:[NSArray arrayWithObjects:newCapsuleName, nil] forKey:@"capsules"];
    [newCapsule setObject:[user username] forKey:@"userName"];
    [newCapsule save];
    [self.navigationController popViewControllerAnimated:YES];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
