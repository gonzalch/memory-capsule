//
//  CapsuleMapViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/21/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "CapsuleMapViewController.h"


@interface CapsuleMapViewController (){
    PFUser * user;
    NSArray * capsuleLocations;
}

@end

@implementation CapsuleMapViewController

@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    [self.navigationController setNavigationBarHidden: YES];
    
    user = [PFUser currentUser];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Set Initial Location
    MKCoordinateRegion newRegion;
	newRegion.center.latitude = 38.340394;   // SSU location...
	newRegion.center.longitude = -122.675411;
    newRegion.span.latitudeDelta = 2;//0.009394;
    newRegion.span.longitudeDelta = 2;//0.095411;
	[self.mapView setRegion:newRegion animated: YES];

    [self loadCapsulesOnMap];
}


-(void) loadCapsulesOnMap{
    
    PFQuery * capsulesQuery  = [PFQuery queryWithClassName:@"Capsule"];
    [capsulesQuery whereKey:@"createdBy" equalTo:user.username];
    capsuleLocations = [[NSArray alloc] init];
    capsuleLocations = [capsulesQuery findObjects];
    NSLog(@"Capsules  buried by me: %i", [capsuleLocations count]);
    
    //Create a point on the map for each element
    for (int i = 0; i < [capsuleLocations count];i++) {
        PFObject * curLocation = capsuleLocations[i];
        
        // Set some coordinates for our position (Buckingham Palace!)
        PFObject * pfPoint = [curLocation valueForKey:@"location"];
        
        
        //MKCoordinateRegion test = MKCoordinateRegionMake(CLLocationCoordinate2DMake(pfPoint.latitude, pfPoint.longitude),                                               MKCoordinateSpanMake(0.01, 0.01));
        
        GeoPointAnnotation *annotation = [[GeoPointAnnotation alloc] initWithObject:curLocation];
        [self.mapView addAnnotation:annotation];
        
        // Add the annotation to our map view
        //MapViewAnnotation *newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Buckingham Palace" andCoordinate:location];
        //[self.mapView addAnnotation:newAnnotation];
        
    }
    
    

}

@end
