//
//  KNRandCell.m
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import "KNRandCell.h"
#import "UIImageView+Common.h"
#import "UILabel+Common.h"
#import "UIButton+Common.h"

@interface KNRandCell ()
@property (nonatomic, strong) UIImageView *headImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *moodsLabel;
@property (nonatomic, strong) UILabel *pollLabel;//票数
@property (nonatomic, strong) UILabel *rankingLabel;
@property (nonatomic, strong) UIButton *button;
@end

@implementation KNRandCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.headImageView = [UIImageView obtainImageView];
        self.moodsLabel = [UILabel obtainAlignmentLeftLabelWithFont:12];
        self.pollLabel = [UILabel obtainAlignmentLeftLabelWithFont:10];
        self.nameLabel = [UILabel obtainAlignmentLeftLabelWithFont:10];
        self.rankingLabel = [UILabel obtainAlignmentCenterLabelWithFont:13];
        self.rankingLabel.layer.cornerRadius = 8;
        self.rankingLabel.layer.masksToBounds = YES;
        
        self.button = [UIButton obtainButtonWithRadius:3 title:@"投票"];
        self.button.titleLabel.font = [UIFont systemFontOfSize:10];
        
        [self.contentView addSubview:self.rankingLabel];
        [self.contentView addSubview:self.headImageView];
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.pollLabel];
        [self.contentView addSubview:self.button];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat y = (CGRectGetHeight(self.bounds) - 16) / 2;
    self.rankingLabel.frame = CGRectMake(15, y, 16, 16);
    self.headImageView.frame = CGRectMake(CGRectGetMaxX(self.rankingLabel.frame) + 15, 0, CGRectGetHeight(self.bounds), CGRectGetHeight(self.bounds));
    self.nameLabel.frame = CGRectMake(CGRectGetMaxX(self.headImageView.frame) + 10, 5, 100, 25);
    self.moodsLabel.frame = CGRectOffset(self.nameLabel.frame, 0, CGRectGetHeight(self.moodsLabel.bounds));
    CGRect frame = self.moodsLabel.frame;
    frame.size.height = 18;
    self.moodsLabel.frame = frame;
    frame = CGRectOffset(frame, 0, frame.size.height);
    self.pollLabel.frame = frame;
    
    CGFloat x = CGRectGetWidth(self.bounds) - 45 - 15;
    y = (CGRectGetHeight(self.bounds) - 45) / 2;
    self.button.frame = CGRectMake(x, y, 45, 25);
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
