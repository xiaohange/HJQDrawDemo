//
//  HJQUIKitView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQUIKitView.h"

@implementation HJQUIKitView

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
    
    //    UIImage *image = [UIImage imageNamed:@"头像"];
    
    //    [image drawAtPoint:CGPointZero];
    
    //    [image drawInRect:CGRectMake(0, 0, 100, 100)];
    
    // 设置裁剪区域，超出裁剪区域的都会被裁剪掉
    UIRectClip(CGRectMake(0, 0, 100, 100));
    
    UIImage *pImage = [UIImage imageNamed:@"1.jpg"];
    [pImage drawAsPatternInRect:rect];
    
}

- (void)drawText
{
    NSString *text = @"小韩哥的博客更新了！";
//    CGRect textFrame = CGRectMake(0, 0, 250, 250);
    
    NSDictionary *dict = @{
                           NSFontAttributeName : [UIFont systemFontOfSize:20],
                           NSForegroundColorAttributeName : [UIColor redColor],
                           NSStrokeWidthAttributeName : @5
                           };
    //    UIRectFill(textFrame);
    //    [text drawInRect:textFrame withAttributes:dict];
    
    /*
     [text drawInRect:textFrame withAttributes:dict]; 会自动换行
     [text drawAtPoint:CGPointZero withAttributes:dict]; 不会自动换行
     */
    [text drawAtPoint:CGPointZero withAttributes:dict];
}

@end
