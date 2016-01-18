//
//  ProductCell.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "ProductCell.h"
#import "HZYProduct.h"

@interface ProductCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ProductCell

- (void)setProduct:(HZYProduct *)product{
    _product = product;
    //1.set the image
    self.iconView.image = [UIImage imageNamed:product.icon];
    //2.set the label
    self.nameLabel.text = product.title;
}

- (void)awakeFromNib {
    // Initialization code
    //圆角设置
    self.iconView.layer.cornerRadius = 8;
    self.iconView.clipsToBounds = YES;
}

@end
