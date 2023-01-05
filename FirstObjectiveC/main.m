//
//  main.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2/1/2023.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TestingAppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
//        if ([[NSUserDefaults standardUserDefaults] valueForKey:@"UITestingEnabled"] != nil){
        NSArray *arguments = [[NSProcessInfo processInfo] arguments];
        if ([arguments containsObject:@"-UITestingEnabled"]) {
            appDelegateClassName = NSStringFromClass([TestingAppDelegate class]);
        } else {
            appDelegateClassName = NSStringFromClass([AppDelegate class]);
        }
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
