//
//  DataViewController.h
//  GeoAlarm
//
//  Created by Евгений Ежов on 14.07.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end
