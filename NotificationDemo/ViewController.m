//
//  ViewController.m
//  NotificationDemo
//
//  Created by zuoA on 16/4/21.
//  Copyright © 2016年 啊左. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1. 注册为观察者
    [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(applicationWillResignActiveNotification:)
                                                 name:UIApplicationWillResignActiveNotification
                                               object:nil];
}

/// 2.处理通知回调方法
/// @param notification notification
- (void)applicationWillResignActiveNotification:(NSNotification *)notification {
    // 返回后台的过程，把视图背景改为红色；
    self.myView.backgroundColor = [UIColor redColor];
}

- (IBAction)changeColorBtn:(UIButton *)sender {
    // 按钮把视图背景改为黄色；
    self.myView.backgroundColor = [UIColor yellowColor];
}

@end
