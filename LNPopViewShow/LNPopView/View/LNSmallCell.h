//
//  LNSmallCell.h
//  编程题2
//
//  Created by David on 16/5/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNSmallCell : UITableViewCell

+ (instancetype)smallCellWithTableView:(UITableView *)tableView andDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;


@end
