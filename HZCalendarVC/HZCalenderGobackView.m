//
//  HZCalenderGobackView.m
//  HZCalendarKit
//
//  Created by 侯震 on 2017/6/1.
//  Copyright © 2017年 multway. All rights reserved.
//

#import "HZCalenderGobackView.h"
//设置主题颜色1
#define COLOR_THEME1 [UIColor redColor];

//设置主题颜色
#define COLOR_THEME ([UIColor colorWithRed:25/256.0  green:168/256.0 blue:0/256.0 alpha:1])

//飞猪黄
//#define COLOR_THEME ([UIColor colorWithRed:255/256.0  green:168/256.0 blue:0/256.0 alpha:1])


@implementation HZCalenderGobackView
-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        [self setView];
    }
    return self;
}
-(void)setView{
    
    self.backgroundColor = [UIColor whiteColor];
    _leftLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, self.bounds.size.width/2-20, 40)];
    _leftLabel.backgroundColor = COLOR_THEME;
    _leftLabel.text = @"   请选择出发日期";
    _leftLabel.textColor = [UIColor whiteColor];
    _leftLabel.font = [UIFont systemFontOfSize:14];
    _leftBtn= [UIButton buttonWithType:UIButtonTypeCustom];
    _leftBtn.frame = CGRectMake(self.bounds.size.width/2-40, 5, 20, 40);
    [_leftBtn.imageView setContentMode:UIViewContentModeScaleAspectFill];
    [_leftBtn setImage:[UIImage imageNamed:@"close.png"] forState:UIControlStateNormal];
    
    _rightLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width/2+10, 5, self.bounds.size.width/2-20, 40)];
    _rightLabel.backgroundColor = COLOR_THEME;
    _rightLabel.text = @"   请选择返回日期";
    _rightLabel.textColor = [UIColor whiteColor];
    _rightLabel.font = [UIFont systemFontOfSize:14];
    
    _rightBtn= [UIButton buttonWithType:UIButtonTypeCustom];
    [_rightBtn setImage:[UIImage imageNamed:@"close.png"] forState:UIControlStateNormal];
    _rightBtn.frame = CGRectMake(self.bounds.size.width-40, 5, 20, 40);
    [_rightBtn.imageView setContentMode:UIViewContentModeScaleAspectFill];
    
    _rightBtn.hidden = YES;
    _leftBtn.hidden = YES;
    
    [self addSubview:_leftLabel];
    [self addSubview:_rightLabel];
    [self addSubview:_rightBtn];
    [self addSubview:_leftBtn];
    
}
@end
