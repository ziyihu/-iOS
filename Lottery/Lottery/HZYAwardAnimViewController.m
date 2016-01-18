//
//  HZYAwardAnimViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYAwardAnimViewController.h"
#import "HZYSettingSwitchItem.h"
#import "HZYSettingGroup.h"

@interface HZYAwardAnimViewController ()

@end

@implementation HZYAwardAnimViewController

- (void)setupGroup0{
    HZYSettingItem *awardAnim = [HZYSettingSwitchItem itemWithIcon:nil title:@"中奖动画" destVcClass:nil];
    
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[awardAnim];
    group0.header = @"当有新中奖订单，启动程序时通过动画提醒中奖。为避免过于频繁，高频彩不会提醒";
    [self.data addObject:group0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGroup0];
    // Do any additional setup after loading the view.
}

@end
