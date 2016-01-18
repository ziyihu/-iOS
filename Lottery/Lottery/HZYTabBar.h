//
//  HZYTabBar.h
//  Lottery
//
//  Created by huziyi on 2015-10-26.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HZYTabBar;
@protocol HZYTabBarDelegate <NSObject>

@optional
-(void)tabBar:(HZYTabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to;

@end

@interface HZYTabBar : UIView
@property (nonatomic, weak) id<HZYTabBarDelegate> delegate;

- (void)addTabButtonWithName:(NSString *)name selName:(NSString *)selName;
@end
