//
//  LNPopView.h
//  编程题2
//
//  Created by David on 16/5/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LNSmallTableController;

@interface LNPopView : UIView


// 顶部距离
@property (nonatomic,assign) CGFloat topMargin;
// 右边距离
@property (nonatomic,assign) CGFloat rightMargin;
// tableView宽度
@property (nonatomic,assign) CGFloat width;

@property (nonatomic,copy) NSString *fileName;

// 小视图
@property (nonatomic,strong) LNSmallTableController * smallTableVC;



+ (instancetype)popViewWithTop:(CGFloat)top andRightMargin:(CGFloat)rightMargin andWidth:(CGFloat)width andFileName:(NSString *)fileName;

- (instancetype)initWithTop:(CGFloat)top andRightMargin:(CGFloat)rightMargin andWidth:(CGFloat)width andFileName:(NSString *)fileName;


@end
