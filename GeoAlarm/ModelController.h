//
//  ModelController.h
//  GeoAlarm
//
//  Created by Евгений Ежов on 14.07.13.
//  Copyright (c) 2013 Евгений Ежов. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
