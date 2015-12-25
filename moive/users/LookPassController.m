//
//  LookPassController.m
//  moive
//
//  Created by hinkey on 15-8-20.
//  Copyright (c) 2015年 hinkey. All rights reserved.
//

#import "LookPassController.h"
#import "DJRegisterView.h"

@interface LookPassController ()

@end

@implementation LookPassController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    DJRegisterView *djzcView = [[DJRegisterView alloc] initwithFrame:self.view.bounds djRegisterViewTypeSMS:DJRegisterViewTypeNoScanfSMS plTitle:@"请输入验证码" title:@"提交"
                                                                  hq:^BOOL(NSString *phoneStr) {            return YES;
                                                                  }
                                                            tjAction:^(NSString *yzmStr){
                                                            }];
    [self.view addSubview:djzcView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
