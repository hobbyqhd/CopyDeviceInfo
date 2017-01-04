//
//  ViewController.m
//  CopyDeviceInfo
//
//  Created by 刘丙鑫 on 2016/12/28.
//  Copyright © 2016年 naver. All rights reserved.
//

#import "ViewController.h"
#import "DeviceHelper.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [DeviceHelper getDeviceInfo];
    
    NSString *phoneModel =[DeviceHelper getCurrentDeviceModel];
    NSLog(@"手机型号%@", phoneModel);
    NSLog(@"%lu", (unsigned long)[DeviceHelper currentResolution]);
    
    NSLog(@"电池余量%f", [DeviceHelper getBatteryQuantity]);
    
    NSLog(@"可用内存%@", [DeviceHelper getAvailableMemorySize]);
    NSLog(@"总内存%@", [DeviceHelper getTotalMemorySize]);
    
    NSLog(@"总磁盘空间%@", [DeviceHelper getTotalDiskSize]);
    NSLog(@"可用磁盘空间%@", [DeviceHelper getAvailableDiskSize]);
    
    NSLog(@"当前分辨率：%lu", (unsigned long)[DeviceHelper currentResolution]);
    
    NSLog(@"UUID%@", [DeviceHelper getUDID]);
    UILabel *welcomeLbl = [[UILabel alloc] init];
    welcomeLbl.frame = CGRectMake(100, 50, 85, 30);
    welcomeLbl.text = @"欢迎登陆";
    welcomeLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:welcomeLbl];
    
    self.inputbox_1.text = [DeviceHelper getTotalDiskSize];
    self.mem.text =  [[[DeviceHelper getAvailableDiskSize] stringByAppendingString:@"/"] stringByAppendingString:[DeviceHelper getTotalMemorySize]];
    
    self.dianliang.text = [NSString stringWithFormat:@"%f", [DeviceHelper getBatteryQuantity]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
