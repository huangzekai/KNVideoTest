//
//  KNPictureView.m
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import "KNPictureView.h"
#import "UILabel+Common.h"
#import "UIImageView+Common.h"

@interface KNPictureView ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation KNPictureView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.imageView];
        [self addSubview:self.nameLabel];
    }
    return self;
}

- (UILabel *)nameLabel
{
    if (!_nameLabel)
    {
        _nameLabel = [UILabel obtainAlignmentLeftLabelWithFont:13];
    }
    return _nameLabel;
}

- (UIImageView *)imageView
{
    if (!_imageView)
    {
        _imageView = [UIImageView obtainImageView];
    }
    return _imageView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect topRect, bottomRect;
    
    CGRectDivide(self.bounds, &topRect, &bottomRect, 25, CGRectMaxYEdge);
    
    self.imageView.frame = CGRectInset(topRect, 15, 0);
    self.nameLabel.frame = CGRectInset(bottomRect, 15, 0);
}

@end
