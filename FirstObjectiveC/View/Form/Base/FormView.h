//
//  FormView.h
//  FirstObjectiveC
//
//  Created by Jacky Lam on 2023/1/4.
//

#import <UIKit/UIKit.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@interface FormView : UIView
@property(nonatomic, readonly) UILabel *titleLabel;
@property(nonatomic, readonly) UIView *contentView;
@property(nonatomic, readonly) UILabel *errorLabel;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *error;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
