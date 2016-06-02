//
//  ContentView.m
//  JWOpenEyes
//
//  Created by GuShengTang on 16/6/2.
//  Copyright © 2016年 https://github.com/evenCoder. All rights reserved.
//

#import "ContentView.h"
#import "CustomView.h"

@implementation ContentView

- (instancetype)initWithFrame:(CGRect)frame width:(CGFloat)width model:(EveryDayModel *)model color:(UIColor *)color {
    
    if (self = [super initWithFrame:frame]) {
        
        self.contentMode = UIViewContentModeScaleAspectFill; // 设置图片正常填充
        self.clipsToBounds = YES; // 把超出那部分View隐藏起来
        _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:_imageView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, kWidth, 30)];
        _titleLabel.font = [UIFont systemFontOfSize:16.0];
        _titleLabel.textColor = color;
        [self addSubview:_titleLabel];
        
        _littleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 46, kWidth, 20)];
        _littleLabel.font = [UIFont systemFontOfSize:14.0];
        _littleLabel.textColor = color;
        [self addSubview:_littleLabel];
        
        _descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 80, kWidth - 10, 90)];
        _descriptionLabel.font = [UIFont systemFontOfSize:14.0];
        _descriptionLabel.textColor = color;
        _descriptionLabel.numberOfLines = 0;
        [self addSubview:_descriptionLabel];
        
        _lineView = [[UIView alloc] initWithFrame:CGRectMake(5, 35, 200, 1)];
        _lineView.backgroundColor = color;
        [self addSubview:_lineView];
        
        CGFloat y = _descriptionLabel.frame.size.height + 90;
        
        _collectionCustom = [[CustomView alloc] initWithFrame:CGRectMake(5, y, (kWidth - 10) / 4, 30) width:width LabelString:model.collectionCount collor:color];
        [self addSubview:_collectionCustom];
        
        _shareCustom = [[CustomView alloc] initWithFrame:CGRectMake((kWidth - 10) / 4 + 5, y, (kWidth - 10) / 4, 30) width:width LabelString:model.shareCount collor:color];
        [self addSubview:_shareCustom];
        
        _cacheCustom = [[CustomView alloc] initWithFrame:CGRectMake(_shareCustom.frame.origin.x + _shareCustom.frame.size.width, y, (kWidth - 10) / 4, 30) width:width LabelString:@"缓存" collor:color];
        [self addSubview:_cacheCustom];
        
        _replyCustom = [[CustomView alloc] initWithFrame:CGRectMake(_cacheCustom.frame.origin.x + _cacheCustom.frame.size.width, y, (kWidth - 10) / 4, 30) width:width LabelString:model.replyCount collor:color];
        [self addSubview:_replyCustom];
        
        [_imageView sd_setImageWithURL:[NSURL URLWithString:model.coverForDetail]];
        
        [self setData:model];
    }
    return self;
}

- (void)setData:(EveryDayModel *)model {
    
    
}

@end


















