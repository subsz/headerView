//
//  TableViewController.m
//  headerView
//
//  Created by 邓超文 on 2016/11/29.
//  Copyright © 2016年 super. All rights reserved.
//

#import "TableViewController.h"
#import "HeaderFooterView.h"
#import "TableViewCell.h"

static NSString *cellID = @"cellID";

@interface TableViewController () <UITableViewDataSource>

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

-(void)setupUI
{
    //左边按钮
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setImage:[UIImage imageNamed:@"back-iOS"] forState:UIControlStateNormal];
    [leftBtn setTitle:@"Tinker" forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"Tinker" style:UIBarButtonItemStylePlain target:nil action:nil];
    [leftBtn sizeToFit];
    UIBarButtonItem *img = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = img;
    
    
    
    
    //右边按钮
    UIBarButtonItem *stars = [[UIBarButtonItem alloc]initWithTitle:@"Android 58颗" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = stars;
    
    UIView *detail = [[UIView alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:detail];
    
    
//    starImage
//    UIImage *starImg = [UIImage imageNamed:@"star-iOS"];
//    UIImageView *starV = [[UIImageView alloc]initWithImage:starImg];
//    [self.view addSubview:starV];
    
    
    //创建UITableView
   
    
    //添加数据源对象
    

    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:cellID];
    
    HeaderFooterView *headerV = [[HeaderFooterView alloc]initWithFrame:CGRectMake(0, 0, 375, 300)];
    headerV.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:headerV];
    

    
    
}



#pragma mark - 数据源方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    return cell;
}




@end
