//
//  ViewController.h
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2/1/2023.
//

#import <UIKit/UIKit.h>
#import "FormView.h"
#import "FormTextField.h"

@interface ViewController : UIViewController
@property (nonatomic) UILabel * titleLabel;
@property (nonatomic) FormTextField *usernameField;
@property (nonatomic) FormTextField *passwordField;
@property (nonatomic) UIButton *submitButton;
@end
