//
//  HZYTitleButton.m
//  Lottery
//
//  Created by huziyi on 2015-10-27.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYTitleButton.h"

@interface HZYTitleButton()
@property (nonatomic, strong) UIFont *titleFont;
@end

@implementation HZYTitleButton

- (void)awakeFromNib{
    self.titleFont = [UIFont systemFontOfSize:14];
    self.titleLabel.font = self.titleFont;
    
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        [self setup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self setup];
    }
    return self;
}

- (void)setup{
    self.titleFont = [UIFont systemFontOfSize:14];
    self.titleLabel.font = self.titleFont;
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *attrs = @{NSFontAttributeName : self.titleFont};
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = 30;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
