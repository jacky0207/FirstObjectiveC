//
//  SearchTextField.h
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/3.
//

#import <UIKit/UIKit.h>
#import "FormView.h"

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@protocol FormTextFieldDelegate;

@interface FormTextField : FormView
@property(nonatomic, readonly) UITextField *textField;
@property(nonatomic) NSString *text;

@property(nullable, nonatomic, weak) id<FormTextFieldDelegate> delegate;
@end

@protocol FormTextFieldDelegate <NSObject>
- (void)formTextField:(FormTextField *)FormTextField didEditedChanged:(NSString *)text;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
