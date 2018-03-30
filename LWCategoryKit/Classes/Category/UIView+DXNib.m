//
//  UIView+DXNib.m
//  MVVM
//
//  Created by 123456 on 2018/1/29.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import "UIView+DXNib.h"

@implementation UIView (DXNib)

/**
 * xib创建的view
 */
+ (instancetype)dx_ViewFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

@end
