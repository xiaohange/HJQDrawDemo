//
//  HJQImageViewController.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQImageViewController.h"
#import "HJQImageView.h"
@interface HJQImageViewController ()
{
    HJQImageView *myImageView;
}
@end

@implementation HJQImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HJQImageView *imgV = [[HJQImageView alloc] initWithFrame:CGRectMake(0, 150, 200, 200)];
    imgV.image = [UIImage imageNamed:@"me"];
    
    [self.view addSubview:imgV];
    myImageView = imgV;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    myImageView.image = [UIImage imageNamed:@"QQGroupforiOS.jpg"];
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
