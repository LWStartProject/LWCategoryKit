//
//  UIImageView+DXCreate.m
//  MVVM
//
//  Created by 123456 on 2018/1/30.
//  Copyright © 2018年 DXin. All rights reserved.
//

#import "UIImageView+DXCreate.h"

@implementation UIImageView (DXCreate)

+ (instancetype)imageViewWithImageName:(NSString *)imageName {
    UIImageView *imageView = [[self alloc] init];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}

@end
