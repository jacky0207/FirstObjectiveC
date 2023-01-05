//
//  TestingSceneDelegate.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import "TestingSceneDelegate.h"
#import "TestingViewController.h"

@implementation TestingSceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    self.window.rootViewController = TestingViewController.new;
    [self.window makeKeyAndVisible];
}

@end
