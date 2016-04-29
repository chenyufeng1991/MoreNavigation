

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];

    [GlobalKit viewControllersArray:self];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (IBAction)buttonClicked:(id)sender {
    FourthViewController *vc = [[FourthViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
