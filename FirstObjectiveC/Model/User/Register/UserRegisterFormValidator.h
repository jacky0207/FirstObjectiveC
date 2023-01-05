//
//  UserRegisterFormValidator.h
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import <Foundation/Foundation.h>
#import "UserRegisterForm.h"

@interface UserRegisterFormValidator : NSObject
+ (Boolean)isValidateUsernameFrom:(struct UserRegisterForm *)form;
+ (Boolean)isValidatePasswordFrom:(struct UserRegisterForm *)form;
+ (Boolean)validateWithForm:(struct UserRegisterForm *)form;
@end
