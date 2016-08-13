//
//  BSRegisterField.m
//  Baisi
//
//  Created by Imanol on 16/8/13.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "BSRegisterField.h"

static NSString * const BSPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation BSRegisterField

-(void)awakeFromNib{
    // 设置光标颜色
    self.tintColor = [UIColor whiteColor];
    // 设置默认的占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:BSPlaceholderColorKey];
}

-(BOOL)becomeFirstResponder{
    
    [self setValue:[UIColor whiteColor] forKeyPath:BSPlaceholderColorKey];
    return [super becomeFirstResponder];
}

-(BOOL)resignFirstResponder{
    [self setValue:[UIColor grayColor] forKeyPath:BSPlaceholderColorKey];
    return [super resignFirstResponder];
}

@end
