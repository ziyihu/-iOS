//
//  HZYHtml.h
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HZYHtml : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *html;
@property (nonatomic, copy) NSString *ID;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)htmlWithDict:(NSDictionary *)dict;

@end
