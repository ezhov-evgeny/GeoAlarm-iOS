//
//  LocationService.h
//  GeoAlarm
//
//  Created by Евгений Ежов on 31.08.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationService : NSObject
<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    CLLocation *currentLocation;
    CLLocation *previusLocation;
}
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *currentLocation;
@property (strong, nonatomic) CLLocation *previusLocation;

- (NSString *)getLocationInfo;
@end
