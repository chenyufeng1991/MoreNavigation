

//
//  InsertViewController.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/28.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "InsertViewController.h"
#import "GlobalKit.h"

@interface InsertViewController ()

@end

@implementation InsertViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"被插入的页面";
}

- (void)viewWillAppear:(BOOL)animated
{
    [GlobalKit viewControllersArray:self];
}

@end
