//
//  HJQBarView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQBarView.h"
#import "UIColor+Random.h"

@implementation HJQBarView

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
     NSArray *data = @[@25,@25,@50];
     NSInteger count = data.count;
     
     CGFloat w = rect.size.width / (2 * count - 1);
     CGFloat h = 0;
     CGFloat x = 0;
     CGFloat y = 0;
     CGFloat viewH = rect.size.height;
     // 1.获取上下文
     CGContextRef ctx = UIGraphicsGetCurrentContext();
     
     for (int i = 0; i < count; i++) {
     h = viewH * [data[i] intValue] / 100.0;
     x = 2 * w * i;
     y = viewH - h;
     // 2.拼接路径
     UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];
     
     // 3.添加路径到上下文
     CGContextAddPath(ctx, path.CGPath);
     
     [[UIColor randomColor] set];
     
     // 4.渲染
     CGContextFillPath(ctx);
     }
}
 
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
     [self setNeedsDisplay];
}

@end
