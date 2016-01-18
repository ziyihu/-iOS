//
//  HZYHelpViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYHelpViewController.h"
#import "HZYSettingArrowItem.h"
#import "HZYSettingGroup.h"
#import "HZYHtmlViewController.h"
#import "HZYNavigationController.h"
#import "HZYHtml.h"

@interface HZYHelpViewController ()
@property (nonatomic, strong) NSArray *htmls;
@end

@implementation HZYHelpViewController

- (NSArray *)htmls{
    if (_htmls == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSArray *dictArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSMutableArray *htmlArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            HZYHtml *html = [HZYHtml htmlWithDict:dict];
            [htmlArray addObject:html];
        }
        _htmls = htmlArray;
    }
    return _htmls;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *items = [NSMutableArray array];
    for (HZYHtml *html in self.htmls) {
         HZYSettingItem *item = [HZYSettingArrowItem itemWithIcon:nil title:html.title destVcClass:[HZYHtmlViewController class]];
        [items addObject:item];
    }
  
    HZYSettingGroup *group = [[HZYSettingGroup alloc] init];
    group.items = items;
    [self.data addObject:group];
    // Do any additional setup after loading the view.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HZYHtmlViewController *htmlVc = [[HZYHtmlViewController alloc] init];
    htmlVc.html = self.htmls[indexPath.row];
    HZYNavigationController *nav = [[HZYNavigationController alloc] initWithRootViewController:htmlVc];
    [self presentViewController:nav animated:YES completion:nil];
}



@end
