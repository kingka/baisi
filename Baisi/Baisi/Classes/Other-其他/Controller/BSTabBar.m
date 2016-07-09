//
//  BSTabBar.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSTabBar.h"

@interface BSTabBar()

@property (nonatomic , strong) UIButton *publishButton;

@end

@implementation BSTabBar

-(void)layoutSubviews{
    [super layoutSubviews];
    int index = 0 ;
    int width = self.bs_width/5;
    int height = self.bs_height;
    for (UIView *view in self.subviews){
        
        // 过滤掉非UITabBarButton
        // if (![@"UITabBarButton" isEqualToString:NSStringFromClass(subview.class)]) continue;
        if (view.class != NSClassFromString(@"UITabBarButton")) continue;
        
        if(index > 1){
            view.frame = CGRectMake((index+1) * width, 0, width, height);
        }else{
            view.frame = CGRectMake(index * width, 0, width, height);
        }
            
        index++;
    }
    
    [self addSubview:self.publishButton];
    
    _publishButton.frame = CGRectMake(0, 0, width, height);
    _publishButton.center = CGPointMake(self.bs_width * 0.5, self.bs_height * 0.5);

}

-(UIButton *)publishButton{
    if(_publishButton == nil){
        _publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        // _publishButton.backgroundColor = BSRandomColor;
        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [_publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _publishButton;
}

-(void)publishClick{
    BSLogFunc;
}

@end
