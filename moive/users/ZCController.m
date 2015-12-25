//
//  ZCController.m
//  moive
//
//  Created by hinkey on 15-8-20.
//  Copyright (c) 2015年 hinkey. All rights reserved.
//
#import "ZCController.h"
#import "DJRegisterView.h"
@interface ZCController ()

@end

@implementation ZCController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DJRegisterView *djzcView = [[DJRegisterView alloc]
                                initwithFrame:self.view.bounds djRegisterViewTypeSMS:DJRegisterViewTypeScanfPhoneSMS plTitle:@"请输入获取到的验证码"
                                title:@"下一步"
                                
                                hq:^BOOL(NSString *phoneStr) {
                                    
                                    return YES;
                                }
                                
                                tjAction:^(NSString *yzmStr) {
                                    
                                }];
    [self.view addSubview:djzcView];
}

@end

