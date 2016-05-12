//
//  HealthViewController.m
//  EmptyNester
//
//  Created by shao on 16/5/12.
//  Copyright © 2016年 曹少帅. All rights reserved.
//

#import "HealthViewController.h"

@interface HealthViewController ()

@end

@implementation HealthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(barButtonTap)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}
-(void)barButtonTap
{
    NSLog(@"用来注册登录功能的实现，和首页的登录注册共享一个功能");
}
@end
