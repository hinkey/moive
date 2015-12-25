//
//  SetPassController.m
//  moive
//
//  Created by hinkey on 15-8-20.
//  Copyright (c) 2015年 hinkey. All rights reserved.
//

#import "SetPassController.h"
#import "DJRegisterView.h"
@interface SetPassController ()

@end

@implementation SetPassController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    DJRegisterView *djSetPassView = [[DJRegisterView alloc] initwithFrame:self.view.bounds action:^(NSString *key1, NSString *key2){
        NSLog(@"%@%@",key1,key2);
    }];
    [self.view addSubview:djSetPassView];
    
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
