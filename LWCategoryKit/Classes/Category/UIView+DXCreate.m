//
//  UIView+DXCreate.m
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import "UIView+DXCreate.h"

@implementation UIView (DXCreate)

+ (instancetype)viewWithBackgroundColor:(UIColor *)bgColor {
    UIView *view = [[self alloc] init];
    view.backgroundColor = bgColor;
    return view;
}

@end
