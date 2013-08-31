//
//  MainViewController.m
//  GeoAlarm
//
//  Created by Евгений Ежов on 31.08.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize locationService;
@synthesize outputText;

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
	// Do any additional setup after loading the view.
    locationService = [[LocationService alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(locationChanged:) name:@"LocationChanged" object:locationService];
    outputText.text = [locationService getLocationInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [locationService finalize];
}

- (void)locationChanged:(NSNotification *)notification
{
    LocationService *locationService1 = notification.object;
    outputText.text = [locationService1 getLocationInfo];
}

@end
