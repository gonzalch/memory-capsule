//
//  GeoPointAnnotation.h
//  Geolocations
//
//  Copyright (c) 2013 Parse, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <Parse/Parse.h>

@interface GeoPointAnnotation : NSObject <MKAnnotation>

- (id)initWithObject:(PFObject *)aObject;
- (id)initWithObjectAndLabels:(PFObject *) aObject title: (NSString *) title andSubtitle: (NSString *) subtitle;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *subtitle;

@end
