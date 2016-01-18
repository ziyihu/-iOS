//
//  HZYScoreTimeViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYScoreTimeViewController.h"
#import "HZYSettingLabelItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingGroup.h"

@interface HZYScoreTimeViewController ()

@end

@implementation HZYScoreTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HZYSettingItem *notice = [HZYSettingSwitchItem itemWithIcon:nil title:@"提醒我关注比赛" destVcClass:nil];
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[notice];
    group0.footer = @"当我关注的比赛比分发生变化时，通过小弹窗或推送进行提醒";
    [self.data addObject:group0];
    
    HZYSettingItem *startTime = [HZYSettingLabelItem itemWithIcon:nil title:@"起始时间" destVcClass:nil];
    HZYSettingGroup *group1 = [[HZYSettingGroup alloc] init];
    group1.items = @[startTime];
    group1.header = @"只在以下时间接受比分直播";
    [self.data addObject:group1];
    
    HZYSettingItem *endTime = [HZYSettingLabelItem itemWithIcon:nil title:@"结束时间" destVcClass:nil];
    HZYSettingGroup *group2 = [[HZYSettingGroup alloc] init];
    group2.items = @[endTime];
    [self.data addObject:group2];
    
}


@end
