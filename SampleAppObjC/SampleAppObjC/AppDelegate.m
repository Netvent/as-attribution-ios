//
//  AppDelegate.m
//  SampleAppObjC
//
//  Created by Yigit Caliskan on 5.11.2019.
//  Copyright © 2019 App Samurai Inc. All rights reserved.
//

#import "AppDelegate.h"
@import ASAttributionSDK;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [ASAttribution initialize:@"aHR0cHM6Ly9hcHBzLmFwcGxlLmNvbS91cy9hcHAvby1ibGFzdC1wdXp6bGUvaWQxNDYyNDQ1MzEyfjM3MjZ%2BZmx5LXlvdS1mb29scy1wZDE1NzEyOTM5MDQ%3D"];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
