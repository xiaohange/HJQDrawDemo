//
//  HJQRectangleView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQRectangleView.h"

@implementation HJQRectangleView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 注意：你的路径一定放在上下文矩阵操作之后
    // 平移上下文
    CGContextTranslateCTM(ctx, 50, 100);
    
    // 旋转上下文
    CGContextRotateCTM(ctx, M_PI_4);
    
    // 缩放上下文
    CGContextScaleCTM(ctx, 0.5, 1.2);
    
    // 2.拼接路径
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(-50, -100, 150, 200)];
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    
    
    [[UIColor redColor] set];
    
    // 4.渲染
    CGContextFillPath(ctx);
    
}


@end
