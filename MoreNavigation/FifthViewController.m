

//
//  FifthViewController.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/28.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "FifthViewController.h"
#import "GlobalKit.h"
#import "SecondViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"第五页";
}

- (void)viewWillAppear:(BOOL)animated
{
    [GlobalKit viewControllersArray:self];
}

- (IBAction)backRootVCButtonClicked:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)backToTab2ButtonClicked:(id)sender
{
    //判断前面有没有SecondViewController，有的话pop到SecondViewController页面，否则不进行跳转
    for (UIViewController *vc in self.navigationController.viewControllers)
    {
        if ([vc isKindOfClass:[SecondViewController class]])
        {
            [self.navigationController popToViewController:vc animated:YES];
            return;
        }
    }
}

@end
