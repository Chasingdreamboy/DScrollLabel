//
//  ViewController.m
//  Demo
//
//  Created by 王晓东 on 16/1/15.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import "ViewController.h"
#import <DScrollLabel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DScrollLabel *label = [[DScrollLabel alloc] initWithType:RollTypeSerial Frame:CGRectMake(50, 50, 100, 20)];
 
    [label rollWithTitle:@"我是测试数据，该类有两种枚举类型，第一种是（RollType）:只有当前边的文字消失之后，后边的文字才开始显示；第二种是(RollTypeGap),可以设置上一个文本的结尾与下一个文本开头之间的距离（gapWidth）,使文本连续播放" withCallBack:^(DScrollLabel *label, NSInteger times) {
        NSLog(@"当前的滚动对象属于类%@, 滚动次数为%@", NSStringFromClass(label.class), @(times));
        
    }];
    label.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    label.rollSpeed = 20;
    [label start];//开始滚动
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
