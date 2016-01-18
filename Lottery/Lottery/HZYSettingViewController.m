//
//  HZYSettingViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYSettingViewController.h"
#import "HZYSettingItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYPushNoticeTableViewController.h"
#import "HZYSettingGroup.h"
#import "MBProgressHUD+MJ.h"
#import "HZYProViewController.h"
#import "HZYPushNotiViewController.h"
#import "HZYHelpViewController.h"
#import "HZYShareViewController.h"

@implementation HZYSettingViewController

- (void)setupGroup0{
    HZYSettingItem *pushNotice = [HZYSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVcClass:[HZYPushNotiViewController class]];
    HZYSettingItem *handShake = [HZYSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选" destVcClass:nil];
    HZYSettingItem *soundEffect = [HZYSettingSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果" destVcClass:nil];
    soundEffect.option = ^{
        NSLog(@"声音效果");
    };
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[pushNotice,handShake,soundEffect];
    [self.data addObject:group0];
}

- (void)setupGroup1{
    HZYSettingItem *update = [HZYSettingItem itemWithIcon:@"MoreUpdate" title:@"检查新版本" destVcClass:nil];
    update.option = ^{
        [MBProgressHUD showMessage:@"正在拼命检查"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showError:@"没有新版本"];
        });
    };
    HZYSettingItem *help = [HZYSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destVcClass:[HZYHelpViewController class]];
    HZYSettingItem *share = [HZYSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享" destVcClass:[HZYShareViewController class]];
    HZYSettingItem *viewMsg = [HZYSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息" destVcClass:[HZYPushNoticeTableViewController class]];
    HZYSettingItem *product = [HZYSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destVcClass:[HZYProViewController class]];
    HZYSettingItem *about = [HZYSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于" destVcClass:[HZYPushNoticeTableViewController class]];
    HZYSettingGroup *group1 = [[HZYSettingGroup alloc] init];
    group1.items = @[update,help,share,viewMsg,product,about];
    [self.data addObject:group1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGroup0];
    [self setupGroup1];
    self.title = @"设置";
}

@end
