//
//  BSTabBarController.m
//  Baisi
//
//  Created by Imanol on 16/7/2.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSTabBarController.h"
#define BSColorWithRGBA(R,G,B,A) [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:(A)]
#define BSColorWithRGB(R,G,B) BSColorWithRGBA((R),(G),(B),1)
#define BSRandomColor BSColorWithRGB(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
@interface BSTabBarController ()

@end

@implementation BSTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    UIViewController *v1 = [[UIViewController alloc]init];
    UIViewController *v2 = [[UIViewController alloc]init];
    UIViewController *v3 = [[UIViewController alloc]init];
    UIViewController *v4 = [[UIViewController alloc]init];
    
        

    [self setupController:v1 withTitle:@"精华" imageName:@"tabBar_essence_icon" selectedImageName:@"tabBar_essence_click_icon"];
    [self setupController:v2 withTitle:@"新帖" imageName:@"tabBar_new_icon" selectedImageName:@"tabBar_new_click_icon"];
    [self setupController:v3 withTitle:@"关注" imageName:@"tabBar_friendTrends_icon" selectedImageName:@"tabBar_friendTrends_click_icon"];
    [self setupController:v4 withTitle:@"我" imageName:@"tabBar_me_icon" selectedImageName:@"tabBar_me_click_icon"];
}

-(void)setupController:(UIViewController*)VC withTitle:(NSString*)title imageName:(NSString*)imageName selectedImageName:(NSString *)selectedImageName{
    [VC.view setBackgroundColor:BSRandomColor];
    VC.tabBarItem.title = title;
    VC.tabBarItem.image = [UIImage imageNamed:imageName];
    VC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    [self addChildViewController:VC];
}


@end
