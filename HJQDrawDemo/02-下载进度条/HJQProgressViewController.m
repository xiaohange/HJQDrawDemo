//
//  HJQProgressViewController.m
//  HJQDrawDemo
//
//  Created by HaRi on 16/8/28.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "HJQProgressViewController.h"
#import "HJQProgressView.h"

@interface HJQProgressViewController ()

@property (weak, nonatomic) IBOutlet HJQProgressView *progressView;

@end

@implementation HJQProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeValueAction:(UISlider *)sender
{
    _progressView.progress = sender.value;
    
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
