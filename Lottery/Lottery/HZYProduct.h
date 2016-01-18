//
//  HZYProduct.h
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HZYProduct : NSObject
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)productWithDict:(NSDictionary *)dict;
@end
