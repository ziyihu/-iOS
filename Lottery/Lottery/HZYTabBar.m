//
//  HZYTabBar.m
//  Lottery
//
//  Created by huziyi on 2015-10-26.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYTabBar.h"
#import "HZYTabBarButton.h"

#define HZYTabBarButtonCount 5

@interface HZYTabBar()
//record the current selected button
@property (nonatomic, weak) UIButton *selectedButton;
@end

@implementation HZYTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//- (id)initWithFrame:(CGRect)frame{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setupButtons];
//    }
//    return self;
//}

- (void)addTabButtonWithName:(NSString *)name selName:(NSString *)selName{
    // create the button
    HZYTabBarButton *button = [HZYTabBarButton buttonWithType:UIButtonTypeCustom];
    //normal button photo
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    //selected button photo
    [button setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    
    // add
    [self addSubview:button];
    //listen to the button click
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    button.tag = self.subviews.count - 1;
    if(self.subviews.count == 1){
        [self buttonClick:button];
    }
}
//
//- (void)setupButtons{
//    // 3.add 5 buttons
//    for (int i = 0; i<HZYTabBarButtonCount; i++) {
//        if(i == 0){
//            [self buttonClick:button];
//        }
//    }
//}

//button style
// noraml
// highlighted
// disable : enabled = NO
// selected : selected = YES

- (void)buttonClick:(HZYTabBarButton *)button {
    //let the delegate know the view change
    if([self.delegate respondsToSelector:@selector(tabBar:didSelectButtonFrom:to:)]){
        [self.delegate tabBar:self didSelectButtonFrom:self.selectedButton.tag to:button.tag];
    }
    //1.cancel the previous selected button
    self.selectedButton.selected = NO;
    //2.select the new button
    button.selected = YES;
    //3.the new button become the current selected button
    self.selectedButton = button;
    //self.selectedIndex = button.tag;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    for (int i = 0; i < self.subviews.count; i++) {
        HZYTabBarButton *button = self.subviews[i];
        //frame
        CGFloat buttonY = 0;
        CGFloat buttonW = self.frame.size.width / self.subviews.count;
        CGFloat buttonH = self.frame.size.height;
        CGFloat buttonX = i * buttonW;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
}
@end
