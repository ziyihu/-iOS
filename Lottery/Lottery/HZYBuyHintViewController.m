//
//  HZYBuyHintViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYBuyHintViewController.h"
#import "HZYSettingSwitchItem.h"
#import "HZYSettingGroup.h"

@interface HZYBuyHintViewController ()

@end

@implementation HZYBuyHintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HZYSettingItem *openHint = [HZYSettingSwitchItem itemWithIcon:nil title:@"打开提醒" destVcClass:nil];
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[openHint];
    group0.header = @"可以通过设置，提醒自己在开奖日不要完了购买彩票";
    [self.data addObject:group0];
    // Do any additional setup after loading the view.
}


@end
