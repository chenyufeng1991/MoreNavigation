//
//  AppDelegate.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/28.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //如果本身默认使用storyboard,就不需要window的初始化
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    self.tabController = [[UITabBarController alloc] init];

    FirstViewController *first = [[FirstViewController alloc] init];
    first.title = @"第一页";
    SecondViewController *second = [[SecondViewController alloc] init];
    second.title = @"第二页";
    ThirdViewController *third = [[ThirdViewController alloc] init];
    third.title = @"第三页";

    //分别管理三个不同的栈，其实就是三个不同的Navigation
    UINavigationController *naviFirst = [[UINavigationController alloc] initWithRootViewController:first];
    UINavigationController *naviSecond = [[UINavigationController alloc] initWithRootViewController:second];
    UINavigationController *naviThird = [[UINavigationController alloc] initWithRootViewController:third];

    self.tabController.viewControllers = @[naviFirst,naviSecond,naviThird];
    self.window.rootViewController = self.tabController;

    //有时候，如果根视图是NavigationController的话，会看到以[self.window addSubview:self.naviController.view];这种方式来设置根视图。
    //个人还是推荐self.window.rootViewContoller = self.naviController;的方式设置。

    //设置为主window并显示，否则启动后是黑屏
    [self.window makeKeyAndVisible];

    return YES;
}

@end
