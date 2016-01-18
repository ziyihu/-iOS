//
//  HZYSettingCell.h
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HZYSettingItem;

@interface HZYSettingCell : UITableViewCell
@property (nonatomic, strong) HZYSettingItem *item;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
