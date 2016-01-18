//
//  HZYAwardViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYAwardViewController.h"
#import "HZYPushNotiViewController.h"
#import "HZYSettingItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingGroup.h"

@interface HZYAwardViewController ()

@end

@implementation HZYAwardViewController

- (void)setupGroup0{
    HZYSettingItem *ball = [HZYSettingSwitchItem itemWithIcon:nil title:@"双色球" destVcClass:nil];
    HZYSettingItem *letou = [HZYSettingSwitchItem itemWithIcon:nil title:@"乐透" destVcClass:nil];
    
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[ball,letou];
    group0.header = @"打开设置即可在开奖后立即收到推送消息，获知开奖号码";
    [self.data addObject:group0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGroup0];
    // Do any additional setup after loading the view.
}


@end
