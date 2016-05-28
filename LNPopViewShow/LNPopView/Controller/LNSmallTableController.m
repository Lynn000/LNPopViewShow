//
//  LNSmallTableController.m
//  编程题2
//
//  Created by cong on 16/5/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "LNSmallTableController.h"
#import "LNSmallCell.h"
@interface LNSmallTableController ()

// 选项组
@property (nonatomic,strong) NSArray *choiceArray;

@end

@implementation LNSmallTableController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - 数据源方法
// 设置表格内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LNSmallCell *cell = [LNSmallCell smallCellWithTableView:tableView andDict:self.choiceArray[indexPath.row]];
    
    return  cell;
}

// 设置行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.choiceArray.count;
}

#pragma mark - 懒加载
- (NSArray *)choiceArray{
    if (_choiceArray == nil) {
        _choiceArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:self.fileName ofType:nil]];
    }
    return _choiceArray;
}

@end
