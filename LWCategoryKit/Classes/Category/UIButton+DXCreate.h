//
//  UIButton+DXCreate.h
//  MVVM
//
//  Created by 123456 on 2018/1/30.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DXCreate)

+ (instancetype)buttonWithNormalTitle:(NSString *)title
                     normalTitleColor:(UIColor *)titleColor
                      backgroundColor:(UIColor *)backgroundColor;


+ (instancetype)buttonWithNormalTitle:(NSString *)title
                     normalTitleColor:(UIColor *)titleColor
                    disableTitleColor:(UIColor *)disableTitleColor
                      backgroundColor:(UIColor *)backgroundColor;

+ (instancetype)buttonWithNormalTitle:(NSString *)title
                     normalTitleColor:(UIColor *)titleColor
                    disableTitleColor:(UIColor *)disableTitleColor
                      backgroundColor:(UIColor *)backgroundColor
                             disabled:(BOOL)disabled;

@end
