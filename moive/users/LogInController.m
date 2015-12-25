

//
//  LogInController.m
//  DJRegisterViewDemo
//
//  Created by asios on 15/8/15.
//  Copyright (c) 2015年 梁大红. All rights reserved.
//

#import "LogInController.h"
#import "DJRegisterView.h"
#import "RootMoiveController.h"
#import "ZCController.h"
#import "LookPassController.h"

@interface LogInController ()

@end

@implementation LogInController

- (void)viewDidLoad {
    [super viewDidLoad];
    DJRegisterView *registerView = [[DJRegisterView alloc]
                                    initwithFrame:
                                    self.view.bounds
                                    djRegisterViewType:DJRegisterViewTypeNav action:^(NSString *acc, NSString *key) {
                                        NSLog(@"点击了登录");
                                        NSLog(@"\n输入的账户%@\n密码%@",acc,key);
                                        
                                        RootMoiveController *moive = [[RootMoiveController alloc]init];
                                        [self presentViewController:moive animated:YES completion:nil];
                                        
                                    } zcAction:^{
                                        NSLog(@"点击了 注册");
                                        ZCController *zc = [[ZCController alloc]init];
                                        [self presentViewController:zc animated:YES completion:nil];
                                        
                                    } wjAction:^{
                                        NSLog(@"点击了   忘记密码");
                                        LookPassController *LookPass = [[LookPassController alloc]init];
                                        [self presentViewController:LookPass animated:YES completion:nil];
                                    }];
    [self.view addSubview:registerView];
}

@end
