//
//  TodayTableViewCell.h
//  JWOpenEyes
//
//  Created by GuShengTang on 16/6/3.
//  Copyright © 2016年 https://github.com/evenCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TodayModel;

@interface TodayTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *picture;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *littleLabel;

@property (nonatomic, strong) UIView *coverview;

@property (nonatomic, strong) TodayModel *model;

- (CGFloat)cellOffset;

@end
