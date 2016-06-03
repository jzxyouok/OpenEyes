//
//  PictureView.h
//  JWOpenEyes
//
//  Created by GuShengTang on 16/6/3.
//  Copyright © 2016年 https://github.com/evenCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ContentView;
@class ContentScrollView;
@class TodayTableViewCell;

@interface PictureView : UIView

@property (nonatomic, strong) ContentView *contentView;

@property (nonatomic, strong) ContentScrollView *scrollView;

@property (nonatomic, strong) TodayTableViewCell *animationView;

@property (nonatomic, strong) UIImageView *playView;

@property (nonatomic, assign) NSInteger currentIndex;

- (instancetype)initWithFrame:(CGRect)frame imageArray:(NSArray *)imageArray index:(NSInteger)index;

@property (nonatomic, assign) CGFloat offsetY;

@property (nonatomic, assign) CGAffineTransform animationTrans;

- (void)animationShow;

- (void)animationDismissUsingCompleteBlock:(void (^)(void))complete;

@end
