//
//  UIImage+MHExtension.h
//  WeChat
//
//  Created by CoderMikeHe on 2017/8/9.
//  Copyright © 2017年 CoderMikeHe. All rights reserved.
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
@end
