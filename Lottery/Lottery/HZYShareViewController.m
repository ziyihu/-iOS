//
//  HZYShareViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-29.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYShareViewController.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingGroup.h"

@interface HZYShareViewController ()

@end

@implementation HZYShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HZYSettingItem *sina = [HZYSettingArrowItem itemWithIcon:@"WeiboSina" title:@"新浪微博" destVcClass:nil];
    HZYSettingItem *sms = [HZYSettingArrowItem itemWithIcon:@"SmsShare" title:@"短信分享" destVcClass:nil];
    HZYSettingItem *mail = [HZYSettingArrowItem itemWithIcon:@"MailShare" title:@"邮件分享" destVcClass:nil];
    
    HZYSettingGroup *group0 = [[HZYSettingGroup alloc] init];
    group0.items = @[sina,sms,mail];
    [self.data addObject:group0];
}



@end
