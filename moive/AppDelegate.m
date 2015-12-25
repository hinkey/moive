//
//  AppDelegate.m
//  moive
//
//  Created by hinkey on 15-8-20.
//  Copyright (c) 2015年 hinkey. All rights reserved.
//

#import "AppDelegate.h"
#import "RootController.h"
#import "LogInController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)
application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:[[LogInController alloc] init]];
    nc.navigationBar.translucent = NO;
    self.window.rootViewController = nc;
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}

@end
