//
//  UserRegisterFormValidatorTests.m
//  FirstObjectiveCTests
//
//  Created by Jacky Lam on 2023/1/4.
//

#import <XCTest/XCTest.h>
#import "UserRegisterForm.h"
#import "UserRegisterFormValidator.h"

@interface UserRegisterFormValidatorTests : XCTestCase

@end

@implementation UserRegisterFormValidatorTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testValidateForm_WithAllValidData_ShouldTrue {
    struct UserRegisterForm form;
    form.username = @"username";
    form.password = @"password";
    XCTAssertTrue([UserRegisterFormValidator validateWithForm:&form]);
}

- (void)testValidateForm_WithNotValidUsername_ShouldFalse {
    struct UserRegisterForm form;
    form.username = @"";
    form.password = @"password";
    XCTAssertFalse([UserRegisterFormValidator validateWithForm:&form]);
}

- (void)testValidateForm_WithNotValidPassword_ShouldFalse {
    struct UserRegisterForm form;
    form.username = @"username";
    form.password = @"";
    XCTAssertFalse([UserRegisterFormValidator validateWithForm:&form]);
}

@end
