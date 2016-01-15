//
//  ScrollLabel.h
//  AnimationLabel
//
//  Created by 王晓东 on 15/12/10.
//  Copyright © 2015年 Ericdong. All rights reserved.
//

///  在未设置titleLabel属性的情况下，默认属性为@{font:[UIFont systemFontOfSize:15], textColor:[UIColor blueColor], backgroundColor:[UIColor clearColor]}

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RollType) {
    RollTypeSerial = 1,//可以设置间隔，在上一条没有完全消失之前显示下一个
    RollTypeGap   //不可以设置间隔，在上一条完全消失之后才可以显示下一个
};

@interface DScrollLabel : UIScrollView
@property (strong, nonatomic) UILabel *titleLabel;
@property (nonatomic) CGFloat rollSpeed;//滚动的速度
@property (assign, nonatomic) CGFloat gapWidth;//当RollType ＝ RollTypeSerial该参数有意义，defaultValue ＝ 20
/**
 *  初始化方法
 *
 *  @param rolltype 类型为：RollType,初始化时需要指明text运动的类型
 *  @param frame    控件的初始化大小
 *
 *  @return 控件本身
 */
- (instancetype)initWithType:(RollType)rolltype Frame:(CGRect)frame ;
/**
 *  设置滚动文本,需要显性调用start
 *
 *  @param title   滚动文本
 *  @param onceEnd 每次混动结束后回调block
 */
- (void)rollWithTitle:(NSString *)title withCallBack:(void(^)(DScrollLabel *label, NSInteger times))onceEnd;
/**
 *  文字启动滚动
 */
- (void)start;
/**
 *  文字暂停滚动
 */
- (void)stop;

@end
