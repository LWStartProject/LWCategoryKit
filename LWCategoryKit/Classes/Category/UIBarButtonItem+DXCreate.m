//
//  UIBarButtonItem+MHExtension.m
//  WeChat
//
//  Created by B_Boy on 2017/7/24.
//  Copyright © 2017年 B_Boy. All rights reserved.
//

#import "UIBarButtonItem+DXCreate.h"

@implementation UIBarButtonItem (DXCreate)


+ (UIBarButtonItem *)dx_systemItemWithTitle:(NSString *)title
                                 titleColor:(UIColor *)titleColor
                                  imageName:(NSString *)imageName
                                     target:(id)target
                                   selector:(SEL)selector
                                   textType:(BOOL)textType {
    UIBarButtonItem *item = textType ?
    ({
        /// 设置普通状态的文字属性
        item = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:selector];
        titleColor = titleColor?titleColor:[UIColor whiteColor];
        NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
        textAttrs[NSForegroundColorAttributeName] = titleColor;
        textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:16.f];//MHRegularFont(16.0f);
        NSShadow *shadow = [[NSShadow alloc] init];
        shadow.shadowOffset =  CGSizeZero;
        textAttrs[NSShadowAttributeName] = shadow;
        [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
        
        // 设置高亮状态的文字属性
        NSMutableDictionary *highTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs];
        highTextAttrs[NSForegroundColorAttributeName] = [titleColor colorWithAlphaComponent:.5f];
        [item setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
        
        // 设置不可用状态(disable)的文字属性
        NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs];
        disableTextAttrs[NSForegroundColorAttributeName] = [titleColor colorWithAlphaComponent:.5f];
        [item setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
        
        item;
    }) : ({
        item = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:target action:selector];
        item;
    });
    return item;
}

+ (UIBarButtonItem *)dx_customItemWithTitle:(NSString *)title
                                 titleColor:(UIColor *)titleColor
                                  imageName:(NSString *)imageName
                                     target:(id)target
                                   selector:(SEL)selector
                 contentHorizontalAlignment:(UIControlContentHorizontalAlignment)contentHorizontalAlignment{
    UIButton *item = [[UIButton alloc] init];
    titleColor = titleColor?titleColor:[UIColor whiteColor];
    [item setTitle:title forState:UIControlStateNormal];
    [item setImage:[UIImage dx_imageAlwaysShowOriginalImageWithImageName:imageName] forState:UIControlStateNormal];
    [item.titleLabel setFont:[UIFont systemFontOfSize:16.f]];//MHRegularFont_16
    [item setTitleColor:titleColor forState:UIControlStateNormal];
    [item setTitleColor:[titleColor colorWithAlphaComponent:.5f] forState:UIControlStateHighlighted];
    [item setTitleColor:[titleColor colorWithAlphaComponent:.5f] forState:UIControlStateDisabled];
    [item sizeToFit];
    item.contentHorizontalAlignment = contentHorizontalAlignment;
    [item addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:item];
}




/// 返回按钮 带箭头的
+ (UIBarButtonItem *)dx_backItemWithTitle:(NSString *)title
                                imageName:(NSString *)imageName
                                   target:(id)target
                                   action:(SEL)action
{
    return [self dx_customItemWithTitle:title titleColor:nil imageName:imageName target:target selector:action contentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}


@end
