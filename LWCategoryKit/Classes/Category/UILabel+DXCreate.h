//
//  UILabel+DXCreate.h
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (DXCreate)

+ (instancetype)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;

+ (instancetype)labelWithText:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;

@end
