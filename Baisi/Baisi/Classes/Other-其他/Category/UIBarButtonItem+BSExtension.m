//
//  UIBarButtonItem+BSExtension.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "UIBarButtonItem+BSExtension.h"

@implementation UIBarButtonItem (BSExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action{
    UIButton *btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    
    return item;
}
@end
