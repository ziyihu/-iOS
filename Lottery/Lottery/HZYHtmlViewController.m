//
//  HZYHtmlViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYHtmlViewController.h"
#import "HZYHtml.h"

@interface HZYHtmlViewController () <UIWebViewDelegate>

@end

@implementation HZYHtmlViewController

- (void)loadView{
    self.view = [[UIWebView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.html.title;
    // Do any additional setup after loading the view.
    UIWebView *webView = (UIWebView *)self.view;
    
    webView.delegate = self;
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.html.html withExtension:nil];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(close)];
//    UIWebView *webView = [[UIView alloc] init];
//    webView.frame = self.view.bounds;
//    [self.view addSubview:webView];
}

- (void)close{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    //跳转到对应的ID的网页标签
    //拼接javascript代码
    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@';",self.html.ID];
    //执行javascript代码
    [webView stringByEvaluatingJavaScriptFromString:js];
    
}

@end
