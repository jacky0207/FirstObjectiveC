//
//  UserRegisterFormValidator.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import "UserRegisterFormValidator.h"

@implementation UserRegisterFormValidator
+ (Boolean)isValidateUsernameFrom:(struct UserRegisterForm *)form {
    return form->username.length > 0;
}

+ (Boolean)isValidatePasswordFrom:(struct UserRegisterForm *)form {
    return form->password.length > 0;
}

+ (Boolean)validateWithForm:(struct UserRegisterForm *)form {
    if (![UserRegisterFormValidator isValidateUsernameFrom:form]) return false;
    if (![UserRegisterFormValidator isValidatePasswordFrom:form]) return false;
    return true;
}
@end
