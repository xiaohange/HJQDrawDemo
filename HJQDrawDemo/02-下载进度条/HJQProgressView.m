//
//  HJQProgressView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQProgressView.h"

@interface HJQProgressView ()

@property (nonatomic, strong) UILabel *myLabel;

@end
@implementation HJQProgressView

- (UILabel*)myLabel
{
    if (!_myLabel) {
        _myLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        _myLabel.text = @"小韩哥";
        _myLabel.textAlignment = NSTextAlignmentCenter;
        _myLabel.textColor = [UIColor blackColor];
        [self addSubview:_myLabel];
    }
    return _myLabel;
}

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    self.myLabel.text = [NSString stringWithFormat:@"%.2f%%",progress*100];
    //    [self drawRect:self.bounds];
    // 重新绘制
    // 在view上做一个重绘的标记，当下次屏幕刷新的时候，就会调用drawRect.
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

 // 当视图显示的时候会调用 默认只会调用一次
- (void)drawRect:(CGRect)rect
{
     // 1.获取上下文
     CGContextRef ctx = UIGraphicsGetCurrentContext();
     
     // 2.拼接路径
     CGPoint center = CGPointMake(50, 50);
     CGFloat radius = 50 - 2;
     CGFloat startA = -M_PI_2;
     CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
     UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
     
     // 3.把路径添加到上下文
     CGContextAddPath(ctx, path.CGPath);
     
     // 4.把上下文渲染到视图
     CGContextStrokePath(ctx);
 
}

@end
