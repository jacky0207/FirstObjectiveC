//
//  TestingAppDelegate.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import "TestingAppDelegate.h"
#import "TestingSceneDelegate.h"

@implementation TestingAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    UISceneConfiguration *sceneConfiguration = [[UISceneConfiguration alloc] initWithName:nil sessionRole:connectingSceneSession.role];
    sceneConfiguration.delegateClass = [TestingSceneDelegate self];
    sceneConfiguration.storyboard = nil;
    return sceneConfiguration;
}

@end
