//
//  HJQSnowflakeView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQSnowflakeView.h"

@interface HJQSnowflakeView ()
{
    int count;
}

@property (nonatomic, assign) CGFloat snowY;

@end

@implementation HJQSnowflakeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
    }
    return self;
}

// 加载xib完毕就调用
- (void)awakeFromNib
{
    //    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
    
    // iphone每秒刷新60次
    // 屏幕刷新的时候就会触发
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    _snowY += 5;
    UIImage *image = [UIImage imageNamed:@"雪花"];
    [image drawAtPoint:CGPointMake(0, _snowY)];
    
    if (_snowY >= 480) {
        _snowY = 0;
    }
}


@end
