//
//  HZYHtml.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYHtml.h"

@implementation HZYHtml


- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.html = dict[@"html"];
        self.ID = dict[@"id"];
    }
    return self;
}

+ (instancetype)htmlWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}


@end
