//
//  MainController.m
//  headerView
//
//  Created by 邓超文 on 2016/11/29.
//  Copyright © 2016年 super. All rights reserved.
//

#import "MainController.h"

@interface MainController ()

@property (nonatomic,strong) UIButton *mineButton;

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.mineButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//懒加载
-(UIButton *)mineButton{
    
    if(!_mineButton)
    {
        _mineButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_mineButton sizeToFit];
        [_mineButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _mineButton.frame = CGRectMake(0, 50, 150, 50);
        [_mineButton setTitle:@"我的界面" forState:UIControlStateNormal];
        [_mineButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _mineButton;
}

-(void)click{
    
    UIViewController *nav1 = [self navWithClassName:@"TableViewController" Title:@"header"];
    
    [self presentViewController:nav1 animated:YES completion:nil];
    
}

#pragma mark - 创建子控制器,并设置标题,图片
-(UINavigationController *)navWithClassName:(NSString *)clsName
                                      Title:(NSString*)title

{
    //1.设置vc
    Class cls = NSClassFromString(clsName);
    UIViewController *vc = [[cls alloc]init];
    
    //2.设置标题 和图
    vc.title = title;
    //  vc.tabBarItem.image = [UIImage imageNamed:image];
    //3.包装为vc
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    //4.返回
    return nav;
}


@end
