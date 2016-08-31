//
//  ViewController.m
//  MutableNotification
//
//  Created by Thabresh on 8/31/16.
//  Copyright © 2016 VividInfotech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickToGetNotification:(id)sender {
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:1];
    notification.alertBody = @"Did you want to clear badge icon?";
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.soundName = UILocalNotificationDefaultSoundName;
    notification.applicationIconBadgeNumber = 1;
    notification.category = @"ACTIONABLE";
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    [self performSelector:@selector(AppMinimizatation) withObject:nil afterDelay:0.5];
}
-(void)AppMinimizatation
{
     [NSThread detachNewThreadSelector:NSSelectorFromString(@"suspend") toTarget:[UIApplication sharedApplication] withObject:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
