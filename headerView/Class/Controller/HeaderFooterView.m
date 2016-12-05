//
//  HeaderFooterView.m
//  headerView
//
//  Created by 邓超文 on 2016/11/29.
//  Copyright © 2016年 super. All rights reserved.
//

#import "HeaderFooterView.h"
#import "UILabel+HMAddition.h"
#import "Masonry.h"

@interface HeaderFooterView()

@property(nonatomic,strong) UILabel *label1;
@property(nonatomic,strong) UILabel *label2;

@end

@implementation HeaderFooterView

#pragma mark - 设置基本数据
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

#pragma mark - 搭建界面
-(void)setupUI{
    
    //MARK: 1.创建子控件
    
    //1.1 >> 创建现场UILabel
    UILabel *label1 = [UILabel hm_labelWithText:@"项目" fontSize:15 color:[UIColor darkGrayColor]];
    UILabel *label2 = [UILabel hm_labelWithText:@"任务" fontSize:15 color:[UIColor darkGrayColor]];
    UILabel *label3 =[UILabel hm_labelWithText:@"耗时" fontSize:15 color:[UIColor darkGrayColor]];
    
    
    [self addSubview:label1];
    [self addSubview:label2];
    [self addSubview:label3];
    
    UILabel *text1 =[UILabel hm_labelWithText:@"趣编程" fontSize:15 color:[UIColor blackColor]];
    UILabel *text2 =[UILabel hm_labelWithText:@"[Andorid]个人奇迹星" fontSize:15 color:[UIColor blackColor]];
    UILabel *text3 =[UILabel hm_labelWithText:@"45天" fontSize:15 color:[UIColor blackColor]];
    
    [self addSubview:text1];
    [self addSubview:text2];
    [self addSubview:text3];
    
    
    UIImage *star = [UIImage imageNamed:@"star-iOS"];
    UIImageView *starView = [[UIImageView alloc]initWithImage:star];

    [self addSubview:starView];
    
    //MARK: 2.给子控件布局
    CGFloat leftMargin = 8;
    CGFloat topMargin = 16;
    
    //给现场label布局
    // 项目
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    // 任务
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(label1.mas_bottom).offset(topMargin);
    }];
    // 耗时
    [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(label2.mas_bottom).offset(topMargin);
    }];
    
    // 趣编程
    [text1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label1.mas_right).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    
    // 个人奇迹星
    [text2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label2.mas_right).offset(leftMargin);
        make.top.equalTo(text1.mas_bottom).offset(topMargin);
    }];
    
    //45天
    [text3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label3.mas_right).offset(leftMargin);
        make.top.equalTo(text2.mas_bottom).offset(topMargin);
    }];
    
    //星星
    [starView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-30);
        make.top.equalTo(self).offset(30);
    }];
    
   
}

#pragma mark - Lazy Init

//- (UILabel *)label1 {
//    if (!_label1) {
//        _label1 = [UILabel new];
//    }
//    return _label1;
//}

@end
