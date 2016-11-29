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

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self setupUI];
}

-(void)setupUI
{
    //左边按钮
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"Tinker" style:UIBarButtonItemStylePlain target:nil action:nil];
    UIBarButtonItem *img = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back-iOS"] style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.leftBarButtonItems = @[img,back];
    
    
    
    //右边按钮
    UIBarButtonItem *stars = [[UIBarButtonItem alloc]initWithTitle:@"Android 58颗" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = stars;
    
    UIView *detail = [[UIView alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:detail];
    
    
    //starImage
    UIImage *starImg = [UIImage imageNamed:@"star-iOS"];
    UIImageView *starV = [[UIImageView alloc]initWithImage:starImg];
    [self.view addSubview:starV];
    
    
    //创建UITableView
    UITableView *tb = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    //添加数据源对象
    tb.dataSource = self;
    
    tb.estimatedRowHeight = 200;
    tb.rowHeight = UITableViewAutomaticDimension;
    
    [tb registerClass:[TableViewCell class] forCellReuseIdentifier:cellID];
    
    HeaderFooterView *headerV = [[HeaderFooterView alloc]initWithFrame:CGRectMake(0, 0, 0, 300)];
    
    tb.tableHeaderView = headerV;
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
