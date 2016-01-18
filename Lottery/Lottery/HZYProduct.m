//
//  HZYProduct.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYProduct.h"

@implementation HZYProduct

- (instancetype)initWithDict:(NSDictionary *)dict{
    if(self = [super init]){
//        [self setValuesForKeysWithDictionary:dict];
        self.icon = dict[@"icon"];
        self.title = dict[@"title"];
    }
    return self;
}

+ (instancetype)productWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}
@end
