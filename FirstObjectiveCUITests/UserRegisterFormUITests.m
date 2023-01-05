//
//  UserRegisterFormUITests.m
//  FirstObjectiveCUITests
//
//  Created by Jacky Lam on 2023/1/5.
//

#import <XCTest/XCTest.h>

@interface UserRegisterFormUITests : XCTestCase

@end

@implementation UserRegisterFormUITests

XCUIApplication *app;

- (void)setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    app = [[XCUIApplication alloc] init];
    app.launchArguments = @[@"-UITestingEnabled"];
    [app launch];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testRegisterUser_withAllValidData_ShouldSuccess {
    [app.buttons[@"test"] tap];
    XCTAssert([app.otherElements[@"username"] waitForExistenceWithTimeout:5]);
    [app.otherElements[@"username"] tap];
    [app.otherElements[@"username"] typeText:@"username"];
    [app.otherElements[@"password"] tap];
    [app.otherElements[@"password"] typeText:@"password"];
    [app.buttons[@"submit"] tap];
    XCTAssert([app.alerts.element waitForExistenceWithTimeout:5]);
}

- (void)testRegisterUser_withNotValidUsername_ShouldAlert {
    [app.buttons[@"test"] tap];
    XCTAssert([app.otherElements[@"username"] waitForExistenceWithTimeout:5]);
    [app.otherElements[@"password"] tap];
    [app.otherElements[@"password"] typeText:@"password"];
    [app.buttons[@"submit"] tap];
    XCTAssertNotNil(app.otherElements[@"username"].staticTexts[@"error"].value);
}

- (void)testRegisterUser_withNotValidPassword_ShouldAlert {
    [app.buttons[@"test"] tap];
    XCTAssert([app.otherElements[@"username"] waitForExistenceWithTimeout:5]);
    [app.otherElements[@"username"] tap];
    [app.otherElements[@"username"] typeText:@"username"];
    [app.buttons[@"submit"] tap];
    XCTAssertNotNil(app.otherElements[@"password"].staticTexts[@"error"].value);
}

@end
