//
//  UITextField+DXCreate.m
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import "UITextField+DXCreate.h"

@implementation UITextField (DXCreate)

+ (instancetype)textFieldWithTextColor:(UIColor *)textColor
                              fontSize:(CGFloat)fontSize
                           placeholder:(NSString *)placeholder {
    
    return [self textFieldWithTextColor:textColor fontSize:fontSize placeholder:placeholder keyboardType:UIKeyboardTypeDefault];
}

+ (instancetype)textFieldWithTextColor:(UIColor *)textColor
                              fontSize:(CGFloat)fontSize
                           placeholder:(NSString *)placeholder
                          keyboardType:(UIKeyboardType)keyboardType {
    
    UITextField *textField = [[self alloc] init];
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.textColor = textColor;
    textField.placeholder = placeholder;
    textField.keyboardType = keyboardType;
    return textField;
}

@end
