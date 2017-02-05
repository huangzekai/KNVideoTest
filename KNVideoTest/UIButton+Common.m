//
//  UIButton+Common.m
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import "UIButton+Common.h"

@implementation UIButton (Common)

+ (UIButton *)obtainButtonWithRadius:(CGFloat)radius title:(NSString *)title
{
    UIButton *button = [[UIButton alloc]init];
    button.layer.cornerRadius = radius;
    button.layer.cornerRadius = YES;
    [button setTitle:title forState:UIControlStateNormal];
    
    return button;
}

@end
