//
//  UITextField+DXCreate.h
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (DXCreate)

/**
 快速创建textField

 @param textColor 文字颜色
 @param fontSize 字体大小
 @param placeholder 默认文字
 @return textField
 */
+ (instancetype)textFieldWithTextColor:(UIColor *)textColor
                              fontSize:(CGFloat)fontSize
                           placeholder:(NSString *)placeholder;

/**
 快速创建textField

 @param textColor 文字颜色
 @param fontSize 字体大小
 @param placeholder 默认文字
 @param keyboardType 键盘类型
 @return textField
 */
+ (instancetype)textFieldWithTextColor:(UIColor *)textColor
                              fontSize:(CGFloat)fontSize
                           placeholder:(NSString *)placeholder
                          keyboardType:(UIKeyboardType)keyboardType;

@end
