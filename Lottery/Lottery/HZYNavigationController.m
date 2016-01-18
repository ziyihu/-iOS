//
//  HZYNavigationController.m
//  Lottery
//
//  Created by huziyi on 2015-10-26.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYNavigationController.h"

@interface HZYNavigationController ()

@end

@implementation HZYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize{
    // 4.create the navigate bar
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    navBar.tintColor = [UIColor whiteColor];
    
    if([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0){
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    } else {
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar"] forBarMetrics:UIBarMetricsDefault];
    }
    // 5.set the bar style
    //[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

@end
