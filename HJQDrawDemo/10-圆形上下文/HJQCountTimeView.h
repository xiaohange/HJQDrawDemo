//
//  HJQCountTimeView.h
//  HJQDrawDemo
//
//  Created by HaRi on 16/9/2.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HJQCountTimeView : UIView

@property (nonatomic, copy) void (^tapBlock)();

- (instancetype)initWithFrame:(CGRect)frame;

- (void)startAnimation;

@end
