//
//  HJQPieView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQPieView.h"
#import "UIColor+Random.h"

@implementation HJQPieView

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
    
    NSArray *data = @[@25,@25,@50];
    
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.拼接路径
    CGPoint center = CGPointMake(125, 125);
    CGFloat radius = 120;
    CGFloat startA = 0;
    CGFloat angle = 0;
    CGFloat endA = 0;
    
    for (NSNumber *number in data) {
        // 2.拼接路径
        startA = endA;
        angle = number.intValue / 100.0 * M_PI * 2;
        endA = startA + angle;
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
        [path addLineToPoint:center];
        
        [[UIColor randomColor] set];
        // 把路径添加上下文
        CGContextAddPath(ctx, path.CGPath);
        
        // 渲染
        CGContextFillPath(ctx);
        
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGFloat a = arc4random_uniform(6);
    //CGFloat a =  arc4random()%6;
    NSLog(@"随机数--%f",a);
    
    
    [self setNeedsDisplay];
}

- (void)drawPie
{
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.拼接路径
    CGPoint center = CGPointMake(125, 125);
    CGFloat radius = 120;
    CGFloat startA = 0;
    CGFloat angle = 0;
    CGFloat endA = 0;
    
    // 第一个扇形
    angle = 25 / 100.0 * M_PI * 2;
    endA = startA + angle;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    [path addLineToPoint:center];
    // 添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    [[UIColor redColor] set];
    
    
    // 渲染
    CGContextFillPath(ctx);
    
    
    
    // 第二个扇形
    startA = endA;
    angle = 25 / 100.0 * M_PI * 2;
    endA = startA + angle;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    [path1 addLineToPoint:center];
    // 添加到上下文
    CGContextAddPath(ctx, path1.CGPath);
    [[UIColor greenColor] set];
    // 渲染
    CGContextFillPath(ctx);
    
    // 第三个扇形
    startA = endA;
    angle = 50 / 100.0 * M_PI * 2;
    endA = startA + angle;
    UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    [path2 addLineToPoint:center];
    // 添加到上下文
    CGContextAddPath(ctx, path2.CGPath);
    [[UIColor blueColor] set];
    // 渲染
    CGContextFillPath(ctx);
    
}

@end
