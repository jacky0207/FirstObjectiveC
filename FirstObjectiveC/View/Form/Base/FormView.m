//
//  FormView.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import "FormView.h"

@implementation FormView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectZero];

    _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _titleLabel.textColor = [UIColor blackColor];
    [self addSubview:_titleLabel];

    _contentView = [[UIView alloc] initWithFrame:CGRectZero];
    _contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:_contentView];

    _errorLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _errorLabel.accessibilityIdentifier = @"error";
    _errorLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _errorLabel.textColor = [UIColor blackColor];
    [self addSubview:_errorLabel];

    [NSLayoutConstraint activateConstraints:@[
        [_titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [_titleLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [_titleLabel.topAnchor constraintEqualToAnchor:self.topAnchor],

        [_contentView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [_contentView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [_contentView.topAnchor constraintEqualToAnchor:_titleLabel.bottomAnchor constant:6],

        [_errorLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [_errorLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [_errorLabel.topAnchor constraintEqualToAnchor:_contentView.bottomAnchor constant:6],
        [_errorLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
    ]];

    return self;
}

- (NSString *)title {
    return self.titleLabel.text;
}

- (void)setTitle:(NSString *)text {
    self.titleLabel.text = text;
}

- (NSString *)error {
    return self.errorLabel.text;
}

- (void)setError:(NSString *)error {
    self.errorLabel.text = error;
}
@end
