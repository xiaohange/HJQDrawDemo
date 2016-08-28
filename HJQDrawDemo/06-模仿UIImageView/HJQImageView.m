//
//  HJQImageView.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQImageView.h"

@implementation HJQImageView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)setImage:(UIImage *)image
 {
     _image = image;
     [self setNeedsDisplay];
}
 
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
 // Drawing code
 
     [_image drawInRect:rect];
}

@end
