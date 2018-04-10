//
//  UIImage+MHExtension.h
//  WeChat
//
//  Created by B_Boy on 2017/8/9.
//  Copyright © 2017年 B_Boy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DXExtension)
/**
 *  根据图片名返回一张能够自由拉伸的图片 (从中间拉伸)
 */
+ (UIImage *)dx_resizableImage:(NSString *)imgName;
+ (UIImage *)dx_resizableImage:(NSString *)imgName capInsets:(UIEdgeInsets)capInsets;


/// 返回一张未被渲染的图片
+ (UIImage *)dx_imageAlwaysShowOriginalImageWithImageName:(NSString *)imageName;

/// 绘制圆角图片
- (UIImage *)dx_imageWithRadius:(CGFloat)radius;

@end
