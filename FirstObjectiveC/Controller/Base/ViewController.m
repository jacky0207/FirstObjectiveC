//
//  ViewController.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2/1/2023.
//

#import "ViewController.h"
#import "User.h"
#import "UserRegisterForm.h"
#import "UserRegisterFormValidator.h"

@implementation ViewController
- (void)loadView {
    [super loadView];

    self.view.backgroundColor = UIColor.whiteColor;

    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.text = @"Form";
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.titleLabel];

    self.usernameField = [[FormTextField alloc] initWithFrame:CGRectZero];
    self.usernameField.accessibilityIdentifier = @"username";
    self.usernameField.title = @"Username";
    self.usernameField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.usernameField];

    self.passwordField = [[FormTextField alloc] initWithFrame:CGRectZero];
    self.passwordField.accessibilityIdentifier = @"password";
    self.passwordField.title = @"Password";
    self.passwordField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.passwordField];

    self.submitButton = [[UIButton alloc] initWithFrame:CGRectZero];
    self.submitButton.accessibilityIdentifier = @"submit";
    [self.submitButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.submitButton setTitle:@"submit" forState:UIControlStateNormal];
    self.submitButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.submitButton addTarget:self action:@selector(handleSubmitForm) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.submitButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16],
        [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16],
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:16],

        [self.usernameField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16],
        [self.usernameField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16],
        [self.usernameField.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:25],

        [self.passwordField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16],
        [self.passwordField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16],
        [self.passwordField.topAnchor constraintEqualToAnchor:self.usernameField.bottomAnchor constant:25],

        [self.submitButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16],
        [self.submitButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16],
        [self.submitButton.topAnchor constraintEqualToAnchor:self.passwordField.bottomAnchor constant:25],
    ]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)handleSubmitForm {
    struct UserRegisterForm form;
    form.username = self.usernameField.text;
    form.password = self.passwordField.text;

    if (![UserRegisterFormValidator validateWithForm:&form]) {
        if (![UserRegisterFormValidator isValidateUsernameFrom:&form]) {
            self.usernameField.error = @"Please enter";
        }
        if (![UserRegisterFormValidator isValidatePasswordFrom:&form]) {
            self.passwordField.error = @"Please enter";
        }
        return;
    }

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:@"Form is valid." preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alertController animated:true completion:nil];
}
@end
