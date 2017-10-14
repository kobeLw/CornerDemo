//
//  ViewController1.m
//  CornerDemo
//
//  Created by kobe on 2017/10/7.
//  Copyright © 2017年 kobe. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Objective-c";
    
    [self setUpView];
}

- (void)setUpView {
    UIView *examleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    examleView.center = self.view.center;
    examleView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:examleView];
    [self cornerRadiusWithView:examleView];
}

- (void)cornerRadiusWithView:(UIView *)cornerView {
    CGRect rect = cornerView.bounds;
    CGSize radio = CGSizeMake(10, 10);//圆角尺寸
    UIRectCorner corner = UIRectCornerBottomLeft | UIRectCornerBottomRight;//这只圆角位置
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:radio];
    CAShapeLayer *masklayer = [[CAShapeLayer alloc]init];//创建shapelayer
    masklayer.frame = cornerView.bounds;
    masklayer.path = path.CGPath;//设置路径
    cornerView.layer.mask = masklayer;
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
