//
//  MainViewController.h
//  GeoAlarm
//
//  Created by Евгений Ежов on 31.08.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationService.h"

@interface MainViewController : UIViewController
@property (strong, nonatomic) LocationService *locationService;
@property (weak, nonatomic) IBOutlet UITextView *outputText;

@end
