//
//  HJQLastCustomView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/9/2.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQLastCustomView.h"

@implementation HJQLastCustomView

- (instancetype)init
{
    if (self == [super init]) {
        self.bounds = CGRectMake(0, 0, 43, 43);
        [self initSubLayer:self.bounds];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect
//{
//
//
//}

- (void)initSubLayer:(CGRect)frame
{
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = frame;
    // 延迟时间
    replicatorLayer.instanceDelay = 0.6/5;
    // 重复次数
    replicatorLayer.instanceCount = 5;
    // 间隔
    replicatorLayer.instanceTransform = CATransform3DMakeTranslation(10, 0, 0);
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(0, 0, 3, 40);
    shape.lineWidth = 3;
    shape.lineCap = kCALineCapRound;
    shape.strokeColor = [UIColor redColor].CGColor;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(1.5, 0)];
    [path addLineToPoint:CGPointMake(1.5, shape.frame.size.height)];
    shape.path = path.CGPath;
    
    [shape addAnimation:[self extendAnimation] forKey:@"scaleAnimation"];
    
    [replicatorLayer addSublayer:shape];
    
    [self.layer addSublayer:replicatorLayer];
}

- (CABasicAnimation*)extendAnimation
{
    CABasicAnimation *scale = [CABasicAnimation animationWithKeyPath:@"transform"];
    scale.fromValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, 1.0, 1.0, 0)];
    scale.toValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, 1, 1.0/5, 0)];
    scale.autoreverses =YES;
    scale.repeatCount = HUGE;
    scale.duration = 0.6;
    return scale;
}


@end
