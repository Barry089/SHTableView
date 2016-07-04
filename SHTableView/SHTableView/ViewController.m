//
//  ViewController.m
//  SHTableView
//
//  Created by Li Zhe on 7/4/16.
//  Copyright © 2016 SH10. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    //数据视图的头部视图的设定
    _tableView.tableHeaderView = nil;
    //数据视图的尾部视图
    _tableView.tableFooterView = nil;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    //[self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    for (int i=1; i<20; i++) {
        NSString *str = [NSString stringWithFormat:@"A %d", i];
        [_arrayData addObject:str];
    }
    //当数据视图的数据源发生变化时，更新数据视图 重新加载数据
    [_tableView reloadData];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //NSLog(@" %d", _arrayData.count);
    return _arrayData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifer = @"identifierCell";
    //尝试获得可以复用的单元格
    //如果得不到，则返回nil
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
        
    }
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
