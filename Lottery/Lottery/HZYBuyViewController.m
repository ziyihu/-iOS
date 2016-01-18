//
//  HZYBuyViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYBuyViewController.h"
#import "HZYTitleButton.h"

@interface HZYBuyViewController ()
- (IBAction)titleClicked:(HZYTitleButton *)sender;



@end

@implementation HZYBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/





- (IBAction)titleClicked:(HZYTitleButton *)sender {
    [UIView animateWithDuration:0.5 animations:^{
        sender.imageView.transform =CGAffineTransformMakeRotation(-M_PI_2);
    }];
    
    //add UIView
    UIView *temp = [[UIView alloc] init];
    temp.frame = CGRectMake(10, 100, 100, 30);
    temp.backgroundColor = [UIColor blueColor];
    [self.view addSubview:temp];
}
@end
