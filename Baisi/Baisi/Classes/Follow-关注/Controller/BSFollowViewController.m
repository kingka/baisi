//
//  BSFollowViewController.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSFollowViewController.h"
#import "BSRecommandFollowViewController.h"

@interface BSFollowViewController ()

@end

@implementation BSFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BSCommonColor;
    self.navigationItem.title = @"关注";
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(followClick)];
}

- (void)followClick
{
    BSRecommandFollowViewController *vc = [[BSRecommandFollowViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
