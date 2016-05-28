//
//  ViewController.m
//  LNPopViewShow
//
//  Created by cong on 16/5/23.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "ViewController.h"
#import "LNPopView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)addPopView{
    
    // 创建视图LNPopView 可以模拟微信的加号按钮 显示出的视图
    // 需要设置 该小视图距顶部距离,右边边距 以及小视图宽度
    // 同时 还需要传入一个 含有图片以及名字的plist文件,以便加载数据 图片--key:icon ; 名字--key:name
    
    LNPopView *popView = [LNPopView popViewWithTop:80 andRightMargin:20 andWidth:120 andFileName:@"LinkMan.plist"];

    [self.view addSubview:popView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addPopView)];
    
    
}



@end
