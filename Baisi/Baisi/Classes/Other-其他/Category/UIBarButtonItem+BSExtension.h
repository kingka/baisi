//
//  UIBarButtonItem+BSExtension.h
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BSExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
