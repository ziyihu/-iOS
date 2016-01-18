//
//  HZYSettingCell.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYSettingCell.h"
#import "HZYSettingItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingLabelItem.h"

@interface HZYSettingCell()
@property (nonatomic, strong) UIImageView *arrowView;
@property (nonatomic, strong) UISwitch *switchView;
@property (nonatomic, strong) UILabel *labelView;
@end

@implementation HZYSettingCell

- (UIImageView *)arrowView{
    if(_arrowView == nil){
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowView;
}

- (UISwitch *)switchView{
    if(_switchView == nil){
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}

- (UILabel *)labelView{
    if(_labelView == nil){
        _labelView = [[UILabel alloc] init];
        _labelView.bounds = CGRectMake(0, 0, 100, 30);
        _labelView.backgroundColor = [UIColor redColor];
    }
    return _labelView;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"setting";
    HZYSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HZYSettingCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setItem:(HZYSettingItem *)item{
    _item = item;
    //1. set up data
    [self setupData];
    //2. set up the right button
    [self setupRightContent];
}

- (void)setupRightContent{
    if([self.item isKindOfClass:[HZYSettingArrowItem class]]){
        self.accessoryView = self.arrowView;
    } else if([self.item isKindOfClass:[HZYSettingSwitchItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else if([self.item isKindOfClass:[HZYSettingLabelItem class]]){
        self.accessoryView = self.labelView;
    } else {
        self.accessoryView = nil;
    }
}

- (void)setupData{
    if(self.item.icon){
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;

}

@end
