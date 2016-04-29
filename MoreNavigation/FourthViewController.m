

//
//  FourthViewController.m
//  MoreNavigation
//
//  Created by chenyufeng on 16/4/28.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "FourthViewController.h"
#import "GlobalKit.h"
#import "FifthViewController.h"
#import "InsertViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"第四页";
}

- (void)viewWillAppear:(BOOL)animated
{
    [GlobalKit viewControllersArray:self];
}


- (IBAction)buttonClicked:(id)sender
{
    FifthViewController *vc = [[FifthViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)insertButtonClicked:(id)sender {
    NSMutableArray *pageArray = [self.navigationController.viewControllers mutableCopy];
    for (int i = 0; i < pageArray.count; i++)
    {
        id vc = pageArray[i];
        //找到要插入页面的前一个界面
        if ([vc isKindOfClass:[FifthViewController class]])
        {
            InsertViewController *insert = [[InsertViewController alloc] init];
            //插入界面栈
            [pageArray insertObject:insert atIndex:i + 1];
            [self.navigationController setViewControllers:pageArray animated:NO];

            //打印出当前的界面栈
            [GlobalKit viewControllersArray:self];

            insert.hidesBottomBarWhenPushed = YES;
            [self.navigationController popToViewController:insert animated:YES];
            return;
        }
    }
}


@end
