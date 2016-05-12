//
//  HomeViewController.m
//  EmptyNester
//
//  Created by shao on 16/5/12.
//  Copyright © 2016年 曹少帅. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
{
    NSArray* array;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(barButtonTap)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(leftButtonTap)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    
    array = @[@"这个",@"页面",@"自由",@"更改"];
    
}
-(void)barButtonTap
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"GPS定位" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction* sureAction = [UIAlertAction actionWithTitle:@"我在哪" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"附近好友" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    
    [alert addAction:sureAction];
    [alert addAction:cancelAction];
    
    [self presentViewController:alert animated:YES completion:^{
    }];
    
}
-(void)leftButtonTap
{
    NSLog(@"做注册登录用的按钮");
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* str = @"cellFi";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text = array[indexPath.row];
    return cell;
}

@end
