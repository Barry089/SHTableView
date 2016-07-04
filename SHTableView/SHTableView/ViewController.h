//
//  ViewController.h
//  SHTableView
//
//  Created by Li Zhe on 7/4/16.
//  Copyright © 2016 SH10. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *arrayData;
@end

