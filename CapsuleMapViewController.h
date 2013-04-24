//
//  CapsuleMapViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/21/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <Parse/Parse.h>
#import "GeoPointAnnotation.h"


@interface CapsuleMapViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
