//
//  BSLoginViewController.m
//  Baisi
//
//  Created by Imanol on 16/8/7.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSLoginViewController.h"

@interface BSLoginViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *registerTraining;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginLeading;

@end

@implementation BSLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)closeAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)registerAction:(UIButton*)button {
    // 退出键盘
    [self.view endEditing:YES];
    
    // 设置约束 和 按钮状态
    if (_loginLeading.constant) { // 目前显示的是注册界面, 点击按钮后要切换为登录界面
        _loginLeading.constant = 0;
        button.selected = NO;
        [button setTitle:@"注册账号" forState:UIControlStateNormal];
    } else { // 目前显示的是登录界面, 点击按钮后要切换为注册界面
        _loginLeading.constant = - self.view.bs_width;
        button.selected = YES;
        [button setTitle:@"返回登录" forState:UIControlStateNormal];
    }

    // 动画
    [UIView animateWithDuration:0.25 animations:^{
        // 强制刷新 : 让最新设置的约束值马上应用到UI控件上
        // 会刷新到self.view内部的所有子控件
        [self.view layoutIfNeeded];
    }];

}

@end
