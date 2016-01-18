//
//  HZYLoginViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYLoginViewController.h"
#import "UIImage+Extension.h"
#import "HZYSettingViewController.h"

@interface HZYLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)setting:(id)sender;


@end

@implementation HZYLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *normal = [UIImage resizableImage:@"RedButton"];
    UIImage *high = [UIImage resizableImage:@"RedButtonPressed"];
//    normal = [normal stretchableImageWithLeftCapWidth:normal.size.width*0.5 topCapHeight:normal.size.height*0.5];
//    high = [high stretchableImageWithLeftCapWidth:high.size.width*0.5 topCapHeight:high.size.height*0.5];
    
    [self.loginBtn setBackgroundImage:normal forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:high forState:UIControlStateHighlighted];
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

- (IBAction)setting:(id)sender {
    HZYSettingViewController *settingVc = [[HZYSettingViewController alloc] init];
    [self.navigationController pushViewController:settingVc animated:YES];
}
@end
