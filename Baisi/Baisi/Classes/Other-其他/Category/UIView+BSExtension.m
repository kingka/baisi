//
//  UIView+BSExtension.m
//  Baisi
//
//  Created by Imanol on 16/7/9.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "UIView+BSExtension.h"

@implementation UIView (BSExtension)

- (CGFloat)bs_width
{
    return self.frame.size.width;
}

- (CGFloat)bs_height
{
    return self.frame.size.height;
}

- (void)setBs_width:(CGFloat)bs_width
{
    CGRect frame = self.frame;
    frame.size.width = bs_width;
    self.frame = frame;
}

- (void)setBs_height:(CGFloat)bs_height
{
    CGRect frame = self.frame;
    frame.size.height = bs_height;
    self.frame = frame;
}

- (CGFloat)bs_x
{
    return self.frame.origin.x;
}

- (void)setBs_x:(CGFloat)bs_x
{
    CGRect frame = self.frame;
    frame.origin.x = bs_x;
    self.frame = frame;
}

- (CGFloat)bs_y
{
    return self.frame.origin.y;
}

- (void)setBs_y:(CGFloat)bs_y
{
    CGRect frame = self.frame;
    frame.origin.y = bs_y;
    self.frame = frame;
}

- (CGFloat)bs_centerX
{
    return self.center.x;
}

- (void)setBs_centerX:(CGFloat)bs_centerX
{
    CGPoint center = self.center;
    center.x = bs_centerX;
    self.center = center;
}

- (CGFloat)bs_centerY
{
    return self.center.y;
}

- (void)setBs_centerY:(CGFloat)bs_centerY
{
    CGPoint center = self.center;
    center.y = bs_centerY;
    self.center = center;
}

- (CGFloat)bs_right
{
    //    return self.bs_x + self.bs_width;
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)bs_bottom
{
    //    return self.bs_y + self.bs_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setBs_right:(CGFloat)bs_right
{
    self.bs_x = bs_right - self.bs_width;
}

- (void)setBs_bottom:(CGFloat)bs_bottom
{
    self.bs_y = bs_bottom - self.bs_height;
}
@end
