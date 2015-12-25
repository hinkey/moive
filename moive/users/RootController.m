//
//  RootController.m
//  moive
//
//  Created by hinkey on 15-8-20.
//  Copyright (c) 2015年 hinkey. All rights reserved.
//

#import "RootController.h"
#import "ZCController.h"
#import "SetPassController.h"
#import "LookPassController.h"

@interface RootController ()

@end

@implementation RootController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr = @[@"登录界面",@"注册界面",@"设置密码界面",@"找回密码界面"];
    double win_width = [[UIScreen mainScreen] bounds].size.width;
    
    for (int i=0;i<arr.count;i++)
    {
        UIButton *btn = [UIButton buttonWithType:0];
        btn.frame = CGRectMake(100, 80+i*50, win_width-200, 30);
        [btn setTitle:arr[i] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:7];
        btn.tag = 200+i;
    }
}

- (void)btnClick:(UIButton *)btn
{
    NSArray *vcs =  @[@"LogInController",
                      @"ZCController",
                      @"SetPassController",
                      @"LookPassController"];
    UIViewController *vc = [[[NSClassFromString(vcs[btn.tag-200]) class] alloc] init];
    vc.title = NSStringFromClass([vc class]);
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
