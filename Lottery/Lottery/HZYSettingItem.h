//
//  HZYSettingItem.h
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^HZYSettingItemOption)();

@interface HZYSettingItem : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) Class destVcClass;

@property (nonatomic, copy) HZYSettingItemOption option;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title;
@end
