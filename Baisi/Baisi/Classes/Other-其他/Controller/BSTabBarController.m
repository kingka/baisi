//
//  BSTabBarController.m
//  Baisi
//
//  Created by Imanol on 16/7/2.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSTabBarController.h"
#import "BSTabBar.h"
#import "BSEssenceViewController.h"
#import "BSNewViewController.h"
#import "BSFollowViewController.h"
#import "BSMeViewController.h"

@interface BSTabBarController ()

@end

@implementation BSTabBarController






- (void)viewDidLoad {
    
    [super viewDidLoad];
    UIViewController *v1 = [[BSEssenceViewController alloc]init];
    UIViewController *v2 = [[BSNewViewController alloc]init];
    UIViewController *v3 = [[BSFollowViewController alloc]init];
    UIViewController *v4 = [[BSMeViewController alloc]init];
    
    

    [self setupController:[[UINavigationController alloc] initWithRootViewController:v1] withTitle:@"精华" imageName:@"tabBar_essence_icon" selectedImageName:@"tabBar_essence_click_icon"];
    [self setupController:[[UINavigationController alloc] initWithRootViewController:v2] withTitle:@"新帖" imageName:@"tabBar_new_icon" selectedImageName:@"tabBar_new_click_icon"];
    
    //占位VC
   // [self setupController:vc withTitle:nil imageName:nil selectedImageName:nil];
    
    [self setupController:[[UINavigationController alloc] initWithRootViewController:v3] withTitle:@"关注" imageName:@"tabBar_friendTrends_icon" selectedImageName:@"tabBar_friendTrends_click_icon"];
    [self setupController:[[UINavigationController alloc] initWithRootViewController:v4] withTitle:@"我" imageName:@"tabBar_me_icon" selectedImageName:@"tabBar_me_click_icon"];
    
    //更换自定义tabbar
    [self setValue:[[BSTabBar alloc]init] forKeyPath:@"tabBar"];
}

-(void)setupController:(UIViewController*)VC withTitle:(NSString*)title imageName:(NSString*)imageName selectedImageName:(NSString *)selectedImageName{
    [VC.view setBackgroundColor:BSRandomColor];
    VC.tabBarItem.title = title;
    if(imageName.length>0){
        VC.tabBarItem.image = [UIImage imageNamed:imageName];
    }
    if(selectedImageName.length>0){
        VC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    }
    
    [self addChildViewController:VC];
}






//换成另外一种方法：自定义tabbar ，而不用这种取巧的办法
//-(void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    //要控制只添加一次 publishBtn 的方法：1 就是像这样懒加载，就算会出发多次viewwillAPPEAR方法也没关系，因为addSubview 的作用是，如果add 的是同一个对象，那么只会把他add 到最上层，只要不是add 多个对象，就不会出现添加多次的现象
//    [self.tabBar addSubview:self.publishButton];

//    //另一个方法如下
//    //    static dispatch_once_t onceToken;
//    //    dispatch_once(&onceToken, ^{
//    //        /**** 增加一个发布按钮 ****/
//    //        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    //        publishButton.backgroundColor = XMGRandomColor;
//    //        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
//    //        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
//    //        publishButton.frame = CGRectMake(0, 0, self.tabBar.frame.size.width / 5, self.tabBar.frame.size.height);
//    //        publishButton.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
//    //        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
//    //        [self.tabBar addSubview:publishButton];
//    //    });
//}
@end
