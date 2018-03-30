//
//  UILabel+DXCreate.m
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import "UILabel+DXCreate.h"

@implementation UILabel (DXCreate)

+ (instancetype)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize {
    UILabel *label = [[self alloc] init];
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:fontSize];
    [label sizeToFit];
    return label;
}

+ (instancetype)labelWithText:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize {
    UILabel *label = [[self alloc] init];
    label.text = text;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:fontSize];
    [label sizeToFit];
    return label;
}

@end
