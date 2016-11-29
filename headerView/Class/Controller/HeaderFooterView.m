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

//用代码创建的视图会调用这个方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    //1.创建子控件
    
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

    
    //给子控件布局
    CGFloat leftMargin = 8;
    CGFloat topMargin = 16;
    
    //给现场label布局
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(label1).offset(topMargin);
    }];
    
    [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).offset(leftMargin);
        make.top.equalTo(label2).offset(topMargin);
    }];
    
    
    [text1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label1).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    [text2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label2).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    [text3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(label3).offset(leftMargin);
        make.top.equalTo(self).offset(topMargin);
    }];
    
   
}

#pragma mark - Lazy Init

- (UILabel *)label1 {
    if (!_label1) {
        _label1 = [UILabel new];
    }
    return _label1;
}

@end
