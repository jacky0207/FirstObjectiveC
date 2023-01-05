//
//  TestingViewController.m
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import "TestingViewController.h"
#import "ViewController.h"

@implementation TestingViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = UIColor.blackColor;

    self.label = [[UILabel alloc] initWithFrame:CGRectZero];
    self.label.textColor = [UIColor whiteColor];
    self.label.text = @"Testing Mode";
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.label];

    self.button = [[UIButton alloc] initWithFrame:CGRectZero];
    self.button.accessibilityIdentifier = @"test";
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.button setTitle:@"Test Navigation" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(handleTest) forControlEvents:UIControlEventTouchUpInside];
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.button];

    [NSLayoutConstraint activateConstraints:@[
        [self.label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],

        [self.button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.button.topAnchor constraintEqualToAnchor:self.label.bottomAnchor constant:10],
    ]];
}

- (void)handleTest {
    UIViewController *viewController = [[ViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
