//
//  UIImageView+Common.m
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import "UIImageView+Common.h"

@implementation UIImageView (Common)

+ (UIImageView *)obtainImageView
{
    UIImageView *imageView =  [[UIImageView alloc]init];
    imageView.backgroundColor = [UIColor clearColor];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    
    return imageView;
}

+ (UIImageView *)obtainImageViewWithRadius:(CGFloat)radius
{
    UIImageView *imageView = [UIImageView obtainImageView];
    imageView.layer.cornerRadius = radius;
    imageView.layer.masksToBounds = YES;
    
    return imageView;
}

@end
