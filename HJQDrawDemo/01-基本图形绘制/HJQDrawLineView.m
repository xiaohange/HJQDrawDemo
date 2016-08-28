//
//  HJQDrawLineView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQDrawLineView.h"

@implementation HJQDrawLineView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

/**
 *  什么调用：当你视图第一次显示的时候就会调用
 *  作用：绘图
 *  @param rect = self.bounds
 */
- (void)drawRect:(CGRect)rect
{
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.拼接路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    CGPoint startP = CGPointMake(10, 125);
    CGPoint endP = CGPointMake(240, 125);
    CGPoint controlP = CGPointMake(125, 0);
    [path moveToPoint:startP];
    [path addQuadCurveToPoint:endP controlPoint:controlP];
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    // 4.渲染上下文到视图
    CGContextStrokePath(ctx);
}

- (void)drawLine
{
    // 1.获取上下文
    // CGContextRef CG CoreGraphics Ref 引用
    // 目前学的上下文都跟UIGraphics有关，以后想直接获取上下文，直接敲一个UIGraphics
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.设置绘图信息(拼接路径)
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 设置起点
    [path moveToPoint:CGPointMake(10, 10)];
    
    // 添加一条线到某个点
    [path addLineToPoint:CGPointMake(125, 125)];
    [path addLineToPoint:CGPointMake(240, 10)];
    // 3.把路径添加到上下文
    // 直接把UIKit的路径转换成CoreGraphics，CG开头就能转
    CGContextAddPath(ctx, path.CGPath);
    
    // 4.把上下文渲染到视图
    // Stroke描边
    CGContextStrokePath(ctx);
}

- (void)draw2Line
{
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.拼接路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 设置起点
    [path moveToPoint:CGPointMake(10, 125)];
    
    // 添加一条线到某个点
    [path addLineToPoint:CGPointMake(230, 125)];
    
    //    // 设置起点
    //    [path moveToPoint:CGPointMake(10, 10)];
    //
    //    // 添加一条线到某个点
    //    [path addLineToPoint:CGPointMake(125, 100)];
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    
    [path1 moveToPoint:CGPointMake(10, 10)];
    
    [path1 addLineToPoint:CGPointMake(125, 100)];
    
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    CGContextAddPath(ctx, path1.CGPath);
    
    // 设置绘图状态
    // 设置线宽
    CGContextSetLineWidth(ctx, 10);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    //    CGContextSetRGBStrokeColor(ctx, 1, 0, 0, 1);
    [[UIColor redColor] set];
    
    // 4.渲染上下文到视图
    CGContextStrokePath(ctx);

}

@end


