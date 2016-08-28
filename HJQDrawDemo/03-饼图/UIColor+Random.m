//
//  HJQPieView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor
{
    /*
     颜色有两种表现形式 RGB RGBA
     RGB 24
     R,G,B每个颜色通道8位
     8的二进制 255
     R,G,B每个颜色取值 0 ~255
     120 / 255.0
     
     */
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
