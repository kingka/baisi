//
//  BSNavigationController.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSNavigationController.h"

@interface BSNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation BSNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    //自定义navigationcontroller之后，pop手势失效，所以我们要设置一下代理
    self.interactivePopGestureRecognizer.delegate = self;
    //解决push 进来时候，导航栏顶部会出现黑色的现象
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

/**
 *  重写push方法的目的 : 拦截所有push进来的子控制器
 *
 *  @param viewController 刚刚push进来的子控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(self.childViewControllers.count>0){//如果如果viewController不是最早push进来的子控制器
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [btn setTitle:@"返回" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [btn sizeToFit];
        // 这句代码放在sizeToFit后面
        btn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
        // 隐藏底部的工具条
        viewController.hidesBottomBarWhenPushed = YES;
    }
    // 所有设置搞定后, 再push控制器
    [super pushViewController:viewController animated:animated];
}

-(void)back{
    [self popViewControllerAnimated:YES];
}

#pragma mark - <UIGestureRecognizerDelegate>
/**
 *  手势识别器对象会调用这个代理方法来决定手势是否有效
 *
 *  @return YES : 手势有效, NO : 手势无效
 */
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
        if (self.childViewControllers.count == 1) { // 导航控制器中只有1个子控制器
            return NO;
        }
        return YES;
    
    // 手势何时有效 : 当导航控制器的子控制器个数 > 1就有效
    //return self.childViewControllers.count > 1;
}

@end
