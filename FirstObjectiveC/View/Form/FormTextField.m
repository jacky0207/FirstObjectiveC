//
//  FormTextField.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/3.
//

#import "FormTextField.h"

@implementation FormTextField
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    _textField = [[UITextField alloc] initWithFrame:CGRectZero];
    _textField.translatesAutoresizingMaskIntoConstraints = NO;
    _textField.textColor = [UIColor blackColor];
    _textField.layer.borderWidth = 1;
    _textField.layer.borderColor = [UIColor blackColor].CGColor;
    _textField.layer.cornerRadius = 1;
    [_textField addTarget:self action:@selector(handleEditingText) forControlEvents:UIControlEventEditingChanged];
    [self.contentView addSubview:_textField];

    [NSLayoutConstraint activateConstraints:@[
        [_textField.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        [_textField.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor],
        [_textField.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        [_textField.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor],
    ]];

    return self;
}

- (NSString *)text {
    return self.textField.text;
}

- (void)setText:(NSString *)text {
    self.textField.text = text;
}

- (void)handleEditingText {
    self.errorLabel.text = nil;
    if ([self.delegate respondsToSelector:@selector(formTextField:didEditedChanged:)]) {
        [self.delegate formTextField:self didEditedChanged:self.text];
    }
}
@end
