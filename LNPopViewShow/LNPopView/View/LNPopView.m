//
//  LNPopView.m
//  编程题2
//
//  Created by David on 16/5/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "LNPopView.h"
#import "LNSmallTableController.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGTH [UIScreen mainScreen].bounds.size.height

@interface LNPopView ()

// 阴影按钮
@property (nonatomic,weak) UIButton * shadowBtn;

@end


@implementation LNPopView



// 按钮点击事件
- (void)shadowBtnClick:(UIButton *)sender{
    
    self.alpha = 0;
    sender.alpha = 0;
    // 移除视图
    [self removeFromSuperview];
    
}
// 初始化方法
- (instancetype)initWithTop:(CGFloat)top andRightMargin:(CGFloat)rightMargin andWidth:(CGFloat)width andFileName:(NSString *)fileName{
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        
        // 创建阴影按钮
        UIButton *shadowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        shadowButton.backgroundColor = [UIColor colorWithWhite:0 alpha:0.7];
        [self addSubview:shadowButton];
        self.shadowBtn = shadowButton;
        
        // 按钮添加事件
        [shadowButton addTarget:self action:@selector(shadowBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // 创建小视图
        self.smallTableVC = [[LNSmallTableController alloc]initWithStyle:UITableViewStylePlain];
        self.smallTableVC.tableView.backgroundColor = [UIColor redColor];
        self.smallTableVC.tableView.scrollEnabled = NO;
        [shadowButton addSubview:self.smallTableVC.tableView];
        
        
        self.topMargin = top;
        self.rightMargin = rightMargin;
        self.width = width;
        self.fileName = fileName;

    }
    return self;
}

- (void)setFileName:(NSString *)fileName{
    _fileName = fileName;
    self.smallTableVC.fileName = fileName;
}


// 快速构造函数
+ (instancetype)popViewWithTop:(CGFloat)top andRightMargin:(CGFloat)rightMargin andWidth:(CGFloat)width andFileName:(NSString *)fileName{
    
    return [[self alloc]initWithTop:top andRightMargin:rightMargin andWidth:width andFileName:fileName];
    
}
// 布局子控件
- (void)layoutSubviews{
    [super layoutSubviews];
    
    // 设置阴影frame
    self.shadowBtn.frame = [UIScreen mainScreen].bounds;
    
    // 设置小视图frame
    CGFloat viewX = SCREEN_WIDTH - self.width - self.rightMargin;
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:self.fileName ofType:nil]];
    CGFloat viewH = array.count * 44;
    
    self.smallTableVC.tableView.frame = CGRectMake(viewX, self.topMargin, self.width, viewH);
    
}
// 初始化方法
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // 创建阴影按钮
        UIButton *shadowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        shadowButton.backgroundColor = [UIColor colorWithWhite:0 alpha:0.7];
        [self addSubview:shadowButton];
        self.shadowBtn = shadowButton;
        
        // 按钮添加事件
        [shadowButton addTarget:self action:@selector(shadowBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // 创建小视图
        self.smallTableVC = [[LNSmallTableController alloc]initWithStyle:UITableViewStylePlain];
        self.smallTableVC.tableView.backgroundColor = [UIColor redColor];
        self.smallTableVC.tableView.scrollEnabled = NO;
        [shadowButton addSubview:self.smallTableVC.tableView];
        
    }
    return self;
}


@end
