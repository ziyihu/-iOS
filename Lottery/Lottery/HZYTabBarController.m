//
//  HZYTabBarController.m
//  Lottery
//
//  Created by huziyi on 2015-10-26.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYTabBarController.h"
#import "HZYTabBar.h"
#import "HZYTabBarButton.h"

@interface HZYTabBarController () <HZYTabBarDelegate>

@end

@implementation HZYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.remove the system tabbar because its not a good tabbar
    //[self.tabBar removeFromSuperview];
    // 2.add mine tabbar , better than the tabbar provided by the system
    HZYTabBar *myTabBar = [[HZYTabBar alloc] init];
    myTabBar.delegate = self;
    myTabBar.frame = self.tabBar.bounds;
    //myTabBar.backgroundColor = [UIColor greenColor];
    [self.tabBar addSubview:myTabBar];
    // 3.add button
    for (int i = 0; self.viewControllers.count > i; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [myTabBar addTabButtonWithName:name selName:selName];
    }
    
}


////button style
//// noraml
//// highlighted
//// disable : enabled = NO
//// selected : selected = YES
//
//- (void)buttonClick:(UIButton *)button {
//    //1.cancel the previous selected button
//    self.selectedButton.selected = NO;
//    //2.select the new button
//    button.selected = YES;
//    //3.the new button become the current selected button
//    self.selectedButton = button;
//    self.selectedIndex = button.tag;
//}

- (void)tabBar:(HZYTabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to{
    //select the controller
    //NSLog(@"%d   %d",from,to);
    self.selectedIndex = to;
}

@end
