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
@synthesize lockDate;
@synthesize openDate;
@synthesize datePickerLock;
@synthesize dateToolbarLock;
@synthesize datePickerOpen;
@synthesize dateToolbarOpen;

NSString *newCapsuleName;
NSString *newDateLock;
NSString *newDateOpen;
NSDate *dateSelectedLock;
NSDate *dateSelectedOpen;


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
    
    // Create view for the lock date picker
    self.datePickerLock = [[UIDatePicker alloc]init];
    self.datePickerLock.datePickerMode = UIDatePickerModeDate;
    [self.datePickerLock addTarget:self action:@selector(dateChangedLock) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolbarLock = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *doneButtonLock = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressedLock:)];
    [toolbarLock setItems:[NSArray arrayWithObject:doneButtonLock]];
    
    self.dateToolbarLock = toolbarLock;
    
    self.lockDate.inputView = self.datePickerLock;
    self.lockDate.inputAccessoryView = self.dateToolbarLock;
    
    // Create view for the open date picker
    self.datePickerOpen = [[UIDatePicker alloc]init];
    self.datePickerOpen.datePickerMode = UIDatePickerModeDate;
    [self.datePickerOpen addTarget:self action:@selector(dateChangedOpen) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolbarOpen = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *doneButtonOpen = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressedOpen:)];
    [toolbarOpen setItems:[NSArray arrayWithObject:doneButtonOpen]];
    
    self.dateToolbarOpen = toolbarOpen;

    self.openDate.inputView = self.datePickerOpen;
    self.openDate.inputAccessoryView = self.dateToolbarOpen;
}

- (void)dateChangedLock
{
    NSLog(@"dateChanged called");
    
    dateSelectedLock = [self.datePickerLock date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    newDateLock = [dateFormatter stringFromDate:dateSelectedLock];
    
}

- (void)donePressedLock:(id)sender
{
    NSLog(@"donePressed called by %@", sender);
    
    lockDate.text = newDateLock;
    
    [self.lockDate resignFirstResponder];
}

- (void)dateChangedOpen
{
    NSLog(@"dateChanged called");
    
    dateSelectedOpen = [self.datePickerOpen date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    newDateOpen = [dateFormatter stringFromDate:dateSelectedOpen];
}

- (void)donePressedOpen:(id)sender
{
    NSLog(@"donePressed called by %@", sender);
    
    openDate.text = newDateOpen;
    
    [self.openDate resignFirstResponder];
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
    
    
    // bug note: MAKE SURE YOU CLICK RETURN ON UITEXTFIELD OR ELSE QUERY WILL CRASH APP 
    
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
    //[self.navigationController popViewControllerAnimated:YES];
    
        
    //PFQuery *queryCapsule = [PFQuery queryWithClassName:@"Capsule"];
    //[query whereKey:@"userName" equalTo:[user username]];
    //PFObject *newCapsule = [query getFirstObject];
    PFObject *newCapsuleObject = [PFObject objectWithClassName:@"Capsule"];
    //[newCapsule addUniqueObjectsFromArray:[NSArray arrayWithObjects:newCapsuleName, nil] forKey:@"capsules"];
    //[newCapsule setObject:[user username] forKey:@"userName"];
    [newCapsuleObject setObject:[user username] forKey:@"createdBy"];
    [newCapsuleObject setObject:newCapsuleName forKey:@"capsuleName"];
    [newCapsuleObject setObject:dateSelectedLock forKey:@"lockDate"];
    [newCapsuleObject setObject:dateSelectedOpen forKey:@"openDate"];
    [newCapsuleObject setObject:[NSNumber numberWithBool:YES] forKey:@"open"];
    [newCapsuleObject save];
     
    
    [self.navigationController popViewControllerAnimated:YES];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

