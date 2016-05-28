//
//  LNSmallCell.m
//  编程题2
//
//  Created by David on 16/5/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "LNSmallCell.h"

@implementation LNSmallCell

static NSString *ID = @"SmallCell";

- (void)layoutSubviews{
    [super layoutSubviews];

    
    // 设置图像位置
    CGFloat imgW = self.bounds.size.width / 3;
    CGFloat imgH = imgW;
    
    self.imageView.center = CGPointMake(imgW * 0.5, imgW * 0.5);
    self.imageView.bounds = CGRectMake(0, 0, imgW , imgH);
    
    // 设置文字位置
    CGFloat textLblW = self.bounds.size.width - imgW;
    CGFloat textLblH = self.bounds.size.height;
    CGFloat textLblX = imgW + textLblW * 0.5 + 10;
    
    self.textLabel.center = CGPointMake(textLblX, textLblH * 0.5);
    self.textLabel.bounds = CGRectMake(0, 0, textLblW, textLblH);
    
}


- (instancetype)initWithDict:(NSDictionary *)dict{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
        
        self.imageView.image = [UIImage imageNamed:dict[@"icon"]];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        self.textLabel.text = dict[@"name"];
        self.textLabel.font = [UIFont systemFontOfSize:14];
    }
    return self;
}

+ (instancetype)smallCellWithTableView:(UITableView *)tableView andDict:(NSDictionary *)dict{
    LNSmallCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc]initWithDict:dict];
    }
    return cell;
}

@end
