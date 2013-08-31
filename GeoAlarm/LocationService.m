//
//  LocationService.m
//  GeoAlarm
//
//  Created by Евгений Ежов on 31.08.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import "LocationService.h"

@implementation LocationService

@synthesize locationManager;
@synthesize currentLocation, previusLocation;

- (id)init
{
    self = [super init];
    if (self)
    {
        locationManager = [[CLLocationManager alloc] init];
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.delegate = self;
        [locationManager startUpdatingLocation];
        currentLocation = nil;
    }
    return self;
}

- (NSString *)getLocationInfo
{
    return [[NSString alloc] initWithFormat:@"Current location: lat:%f, long:%f;\n previous location: lat:%f, long:%f",
            currentLocation.coordinate.latitude, currentLocation.coordinate.longitude,
            previusLocation.coordinate.latitude, previusLocation.coordinate.longitude];
}

#pragma mark -
#pragma mark CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    if (currentLocation == nil || [[locations lastObject] distanceFromLocation:currentLocation] > 0)
    {
        previusLocation = currentLocation;
        currentLocation = [locations lastObject];
        NSLog(@"Did update from location %@ to %@", previusLocation, currentLocation);
        [[NSNotificationCenter defaultCenter] postNotificationName:@"LocationChanged" object:self];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    [[[UIAlertView alloc] initWithTitle:@"Location updated falied" message:error.description delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}
@end
