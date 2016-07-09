//
//  BSMeViewController.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSMeViewController.h"
#import "BSSettingViewController.h"

@interface BSMeViewController ()

@end

@implementation BSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BSCommonColor;
    self.navigationItem.title = @"我";
    // 右边-设置
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    // 右边-月亮
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}

- (void)settingClick
{
    BSSettingViewController *vc = [[BSSettingViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)moonClick
{
    BSLogFunc
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
