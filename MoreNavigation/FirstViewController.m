

//
//  FirstViewController.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/28.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "FirstViewController.h"
#import "GlobalKit.h"
#import "FourthViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

/**
 *  我这里的需求是主界面有三个tab,这三个Tab主界面都是没有Navigation的，但是下面有TabBar；
 从三个TabBar都可以进入其他页面，其他的二级界面没有TabBar，但是有Navigation。
 */
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //主界面隐藏导航栏，推荐使用这种方式来设置
    [self.navigationController setNavigationBarHidden:YES animated:animated];

    //打印此时的界面栈
    [GlobalKit viewControllersArray:self];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (IBAction)buttonClicked:(id)sender {
    FourthViewController *vc = [[FourthViewController alloc] init];
    //进入二级界面，隐藏TabBar
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
