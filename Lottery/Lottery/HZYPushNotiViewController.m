//
//  HZYPushNotiViewController
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYPushNotiViewController.h"
#import "HZYSettingItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYPushNoticeTableViewController.h"
#import "HZYSettingGroup.h"
#import "HZYSettingCell.h"
#import "MBProgressHUD+MJ.h"
#import "HZYProViewController.h"
#import "HZYPushNotiViewController.h"
#import "HZYAwardViewController.h"
#import "HZYAwardAnimViewController.h"
#import "HZYScoreTimeViewController.h"
#import "HZYBuyHintViewController.h"


@implementation HZYPushNotiViewController

- (void)setupGroup0{
    HZYSettingItem *pushNotice1 = [HZYSettingArrowItem itemWithIcon:nil title:@"开奖号码推送" destVcClass:[HZYAwardViewController class]];
    HZYSettingItem *pushNotice2 = [HZYSettingArrowItem itemWithIcon:nil title:@"中奖动画" destVcClass:[HZYAwardAnimViewController class]];
    HZYSettingItem *pushNotice3 = [HZYSettingArrowItem itemWithIcon:nil title:@"比分直播提醒" destVcClass:[HZYScoreTimeViewController class]];
    HZYSettingItem *pushNotice4 = [HZYSettingArrowItem itemWithIcon:nil title:@"购彩定时提醒" destVcClass:[HZYBuyHintViewController class]];
    
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[pushNotice1,pushNotice2,pushNotice3,pushNotice4];
    [self.data addObject:group0];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupGroup0];
}

@end
