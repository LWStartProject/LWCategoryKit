//
//  UIImage+MHExtension.h
//  WeChat
//
//  Created by B_Boy on 2017/8/9.
//  Copyright © 2017年 B_Boy. All rights reserved.
//

#import "UIImage+DXExtension.h"

@implementation UIImage (DXExtension)

/**
 *  根据图片名返回一张能够自由拉伸的图片 (从中间拉伸)
 */
+ (UIImage *)dx_resizableImage:(NSString *)imgName
{
    UIImage *image = [UIImage imageNamed:imgName];
    return [self dx_resizableImage:imgName capInsets:UIEdgeInsetsMake(image.size.height *.5f, image.size.width*.5f, image.size.height*.5f, image.size.width*.5f)];
}

+ (UIImage *)dx_resizableImage:(NSString *)imgName capInsets:(UIEdgeInsets)capInsets
{
    UIImage *image = [UIImage imageNamed:imgName];
    return [image resizableImageWithCapInsets:capInsets];
}

+ (UIImage *)dx_imageAlwaysShowOriginalImageWithImageName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    if ([image respondsToSelector:@selector(imageWithRenderingMode:)])
    {   //iOS 7.0+
        return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }else{
        return image;
    }
}

- (UIImage *)dx_imageWithRadius:(CGFloat)radius {
    
    CGFloat scale = [UIScreen mainScreen].scale;
    UIGraphicsBeginImageContextWithOptions(self.size, NO, scale);
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    CGContextAddPath(c, path.CGPath);
    CGContextClip(c);
    [image drawInRect:rect];
    CGContextDrawPath(c, kCGPathFillStroke);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
