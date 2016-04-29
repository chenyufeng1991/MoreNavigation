
//
//  GlobalKit.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/29.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "GlobalKit.h"

@implementation GlobalKit

+ (void)viewControllersArray:(UIViewController *)viewController
{
    NSArray *vcArray = viewController.navigationController.viewControllers;
    NSLog(@"\n%@---%@",viewController,vcArray);
}

@end
