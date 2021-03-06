//
//  HealthViewController.m
//  EmptyNester
//
//  Created by shao on 16/5/12.
//  Copyright © 2016年 曹少帅. All rights reserved.
//

#import "HealthViewController.h"
#import "firstViewController.h"
#import "NutViewController.h"
#import "BodyViewController.h"
#import "LPViewController.h"
#import "FootViewController.h"
@interface HealthViewController ()
{
    NSArray* array;
}
@end

@implementation HealthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"健康数据";
    
    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithWhite:0.772 alpha:1.000];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    
    array = @[@"本人信息",@"营养摄入",@"健康记录",@"生活计划",@"步数"];
    
    
}
- (IBAction)login:(UIBarButtonItem *)sender
{
    NSLog(@"登录功能");
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
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
                                     reuseIdentifier:str];
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = array[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            firstViewController* one = [[firstViewController
                                       alloc]init];
            [self.navigationController pushViewController:one animated:YES];
            
        }
            break;
        case 1:
        {
            NutViewController* nut = [[NutViewController
                                       alloc]init];
            [self.navigationController pushViewController:nut animated:YES];
        }
            break;
        case 2:
        {
            BodyViewController* body = [[BodyViewController
                                       alloc]init];
            [self.navigationController pushViewController:body animated:YES];
        }
            break;
        case 3:
        {
            LPViewController* lifePlay = [[LPViewController
                                         alloc]init];
            [self.navigationController pushViewController:lifePlay animated:YES];
        }
            break;
        case 4:
        {
            FootViewController* foot = [[FootViewController
                                           alloc]init];
            [self.navigationController pushViewController:foot animated:YES];
        }
            break;


        default:
            break;
    }

}

@end
