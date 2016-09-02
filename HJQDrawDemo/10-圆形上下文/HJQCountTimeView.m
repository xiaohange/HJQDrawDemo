//
//  HJQCountTimeView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/9/2.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQCountTimeView.h"

@interface HJQCountTimeView ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end
@implementation HJQCountTimeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setUI];
        
        CGFloat radius =ceil(MIN(frame.size.width, frame.size.height)) / 2;
        
        self.shapeLayer = [CAShapeLayer layer];
        self.shapeLayer.fillColor = [[UIColor blackColor] colorWithAlphaComponent:0.1].CGColor;
        //设置线条的宽度和颜色
        self.shapeLayer.lineWidth = 2.0f;
        self.shapeLayer.strokeColor = [UIColor redColor].CGColor;
        //设置stroke起始点
        self.shapeLayer.strokeStart = 0;
        self.shapeLayer.strokeEnd = 1;
        //创建出圆形贝塞尔曲线
        
        UIBezierPath* circlePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(radius, radius) radius:radius startAngle: -M_PI_2 endAngle:  -M_PI_2 + 0.00000001   clockwise:NO];
        
        self.shapeLayer.path = circlePath.CGPath;
        
        [self.layer addSublayer:self.shapeLayer];
    }
    return self;
}

- (void)setUI
{
    UILabel *label = [UILabel new];
    label.text = @"跳转";
    label.frame = self.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self addSubview:label];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick)];
    label.userInteractionEnabled = YES;
    [label addGestureRecognizer:tap];
}

- (void)tapClick
{
    if (self.tapBlock) {
        self.tapBlock();
    }
}

- (void)startAnimation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration = 2;
    animation.toValue = @0;
    [self.shapeLayer addAnimation:animation forKey:nil];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
