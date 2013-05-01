//
//  CreateCapsuleViewController.m
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "CreateCapsuleViewController.h"

@interface CreateCapsuleViewController ()

// Text field tag identifiers
enum{
    capsuleNameTag = 0,
    capsuleLocationTag = 1
};

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
@synthesize capsuleLocation;

NSString *newCapsuleName;
CLLocationCoordinate2D  newCapsuleLocation;
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
    //self.datePickerLock.datePickerMode = UIDatePickerModeDate;
    [self.datePickerLock addTarget:self action:@selector(dateChangedLock) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolbarLock = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *doneButtonLock = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressedLock:)];
    [toolbarLock setItems:[NSArray arrayWithObject:doneButtonLock]];
    
    self.dateToolbarLock = toolbarLock;
    
    self.lockDate.inputView = self.datePickerLock;
    self.lockDate.inputAccessoryView = self.dateToolbarLock;
    
    // Create view for the open date picker
    self.datePickerOpen = [[UIDatePicker alloc]init];
    //self.datePickerOpen.datePickerMode = UIDatePickerModeDate;
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
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    //[dateFormatter setDateStyle:NSDateFormatterLongStyle];
    
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
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    
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
    NSLog(@"Sender %i entered %@", textField.tag, textField.text);
    switch(textField.tag){
        case 0:
            newCapsuleName = textField.text;
            break;
        case 1:
            [self computeLatLongForGivenLocation:textField.text];
            break;
        default:
            return NO;
    }
    
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"Sender %i entered %@", textField.tag, textField.text);
    switch(textField.tag){
        case 0:
            newCapsuleName = textField.text;
            break;
        case 1:
            [self computeLatLongForGivenLocation:textField.text];
            break;
        default:
            break;
    }
    
    [textField resignFirstResponder];
    
}

-  (IBAction)createButtonPressed:(id)sender
{
    // bug note: MAKE SURE YOU CLICK RETURN ON UITEXTFIELD OR ELSE QUERY WILL CRASH APP 
    NSLog(@"CreateButtonPressed");
    
    // Link new capsule into the CapsulesList
    PFUser *user = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"CapsulesList"];
    [query whereKey:@"userName" equalTo:[user username]];
    PFObject *newCapsule = [query getFirstObject];
    [newCapsule addUniqueObjectsFromArray:[NSArray arrayWithObjects:newCapsuleName, nil] forKey:@"capsules"];
    [newCapsule setObject:[user username] forKey:@"userName"];
    [newCapsule saveInBackground];
    
    //Convert our latlong into a pfpoint
    PFGeoPoint *pfCapsuleLocation = [PFGeoPoint geoPointWithLatitude:newCapsuleLocation.latitude
                           longitude:newCapsuleLocation.longitude];
    
    //Save new capsule into the Capsule table
    PFObject *newCapsuleObject = [PFObject objectWithClassName:@"Capsule"];
    [newCapsuleObject setObject:[user username] forKey:@"createdBy"];
    [newCapsuleObject setObject:newCapsuleName forKey:@"capsuleName"];
    [newCapsuleObject setObject:pfCapsuleLocation forKey:@"location"];
    [newCapsuleObject setObject:dateSelectedLock forKey:@"lockDate"];
    [newCapsuleObject setObject:dateSelectedOpen forKey:@"openDate"];
    [newCapsuleObject setObject:[NSNumber numberWithBool:YES] forKey:@"open"];
    [newCapsuleObject saveInBackground];
     
    
    [self.navigationController popViewControllerAnimated:YES];

}


# pragma mark - Helper functions

-(void) computeLatLongForGivenLocation: (NSString *)address{
    double latitude = 0, longitude = 0;
    NSString *esc_addr =  [address stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *req = [NSString stringWithFormat:@"http://maps.google.com/maps/api/geocode/json?sensor=false&address=%@", esc_addr];
    NSString *result = [NSString stringWithContentsOfURL:[NSURL URLWithString:req] encoding:NSUTF8StringEncoding error:NULL];
    if (result) {
        NSScanner *scanner = [NSScanner scannerWithString:result];
        if ([scanner scanUpToString:@"\"lat\" :" intoString:nil] && [scanner scanString:@"\"lat\" :" intoString:nil]) {
            [scanner scanDouble:&latitude];
            if ([scanner scanUpToString:@"\"lng\" :" intoString:nil] && [scanner scanString:@"\"lng\" :" intoString:nil]) {
                [scanner scanDouble:&longitude];
            }
        }
    }
    CLLocationCoordinate2D center;
    center.latitude = latitude;
    center.longitude = longitude;
    NSLog(@"Lat: %f, Long: %f", latitude, longitude);
    newCapsuleLocation = center;
}


@end

