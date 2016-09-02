//
//  HRProgressViewController.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/9/2.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HRProgressViewController.h"
#import "HJQCountTimeView.h"
#import "HJQLastCustomView.h"

@interface HRProgressViewController ()

@property (nonatomic, strong) HJQCountTimeView *countView;

@end

@implementation HRProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"圆形加载过渡效果";
    
    [self initSubView];
}

- (void)initSubView
{
    _countView = [[HJQCountTimeView alloc]initWithFrame:CGRectMake(330, 80, 50, 50)];
    
    [self.view addSubview:_countView];
    
    
    HJQLastCustomView *HRView = [HJQLastCustomView new];
    
    HRView.center = self.view.center;
    
    [self.view addSubview:HRView];
    
    self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1];
}

- (IBAction)startAnimationAction:(id)sender
{
    [_countView startAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
