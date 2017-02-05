//
//  ViewController.m
//  KNVideoTest
//
//  Created by susie on 4/2/17.
//  Copyright © 2017年 kennykhuang. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+Common.h"
#import "KNPictureView.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [UITableView obtainTableViewWithFrame:self.view.bounds style:UITableViewStylePlain delegateSource:self];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    KNPictureView *picture = [[KNPictureView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    [cell.contentView addSubview:picture];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
