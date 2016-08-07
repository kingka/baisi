//
//  BSFollowViewController.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSFollowViewController.h"
#import "BSRecommandFollowViewController.h"
#import "BSLoginViewController.h"

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

- (IBAction)quickLogin:(id)sender {
    BSLoginViewController *vc = [[BSLoginViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
