//
//  HZYSettingItem.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYSettingItem.h"

@implementation HZYSettingItem


+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass{
    HZYSettingItem *item = [self itemWithIcon:icon title:title];
    item.destVcClass = destVcClass;
    return item;
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    HZYSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}

+ (instancetype)itemWithTitle:(NSString *)title{
    return [self itemWithIcon:nil title:title];
}
@end
