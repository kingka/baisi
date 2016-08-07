//
//  BSQuickLoginButton.m
//  Baisi
//
//  Created by Imanol on 16/8/7.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSQuickLoginButton.h"

@implementation BSQuickLoginButton

- (void)awakeFromNib
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageView.bs_y = 0;
    self.imageView.bs_centerX = self.bs_width * 0.5;
    
    self.titleLabel.bs_x = 0;
    self.titleLabel.bs_y = self.imageView.bs_bottom;
    self.titleLabel.bs_height = self.bs_height - self.titleLabel.bs_y;
    self.titleLabel.bs_width = self.bs_width;
}

@end
