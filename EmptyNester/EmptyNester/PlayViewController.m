//
//  PlayViewController.m
//  EmptyNester
//
//  Created by shao on 16/5/12.
//  Copyright © 2016年 曹少帅. All rights reserved.
//

#import "PlayViewController.h"

@interface PlayViewController ()
{
UILocalNotification* notif;


}
@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)begin:(id)sender
{
    
    //NSLog(@"%@",[NSDate date]);
    
   // NSDateFormatter* fomatter=[[NSDateFormatter alloc]init];
    //[fomatter setDateFormat:@"HH:mm:ss"];
    // NSDate * datenow=[fomatter dateFromString:@"24:00:00"];
    //创建一个本地通知
    
    notif=[[UILocalNotification alloc]init];
    
    if (notif)
    {
        NSDate *currentDate   = [NSDate date];
        
        notif.timeZone = [NSTimeZone defaultTimeZone]; // 使用本地时区
        notif.fireDate =  notif.fireDate = [currentDate dateByAddingTimeInterval:10.0];
        
        //[notif setFireDate:date];
        notif.timeZone=[NSTimeZone defaultTimeZone];
        notif.repeatInterval=NSCalendarUnitMinute;
        //推送的内容
        notif.alertBody=_warning.text;
        notif.applicationIconBadgeNumber=1;
        
        [[UIApplication sharedApplication]scheduleLocalNotification:notif];
        
        

    
    
}
}
@end
