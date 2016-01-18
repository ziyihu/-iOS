//
//  HZYBaseSettingViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYBaseSettingViewController.h"
#import "HZYSettingItem.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingSwitchItem.h"
#import "HZYPushNoticeTableViewController.h"
#import "HZYSettingGroup.h"
#import "HZYSettingCell.h"
#import "MBProgressHUD+MJ.h"
#import "HZYProViewController.h"
#import "HZYPushNotiViewController.h"

@interface HZYBaseSettingViewController ()

@end

@implementation HZYBaseSettingViewController

- (id)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSArray *)data{
    if(_data == nil){
        _data = [NSMutableArray array];
    }
    return _data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return self.data.count;
    // return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    HZYSettingGroup *group = self.data[section];
    return group.items.count;
    //   return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HZYSettingCell *cell = [HZYSettingCell cellWithTableView:tableView];
    
    // HZYSettingItem *item = self.data[indexPath.section][indexPath.row];
    HZYSettingGroup *group = self.data[indexPath.section];
    cell.item = group.items[indexPath.row];
    
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HZYSettingGroup *group = self.data[indexPath.section];
    HZYSettingItem *item = group.items[indexPath.row];
    
    if (item.option) {
        item.option();
    }
    
    if (item.destVcClass == nil) {
        return;
    }
    UIViewController *vc = [[item.destVcClass alloc] init];
    vc.title = item.title;
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    HZYSettingGroup *group = self.data[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    HZYSettingGroup *group = self.data[section];
    return group.footer;
}

@end
