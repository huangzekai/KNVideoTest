//
//  UITableView+Common.h
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Common)

+ (UITableView *)obtainTableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegateSource:(id)obj;

@end
