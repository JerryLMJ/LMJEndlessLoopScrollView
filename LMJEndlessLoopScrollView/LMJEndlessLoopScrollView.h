//
//  LMJEndlessLoopScrollView.h
//  LMJEndlessLoopScroll
//
//  Created by Major on 16/3/10.
//  Copyright © 2016年 iOS开发者公会. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LMJEndlessLoopScrollView;

@protocol LMJEndlessLoopScrollViewDelegate <NSObject>

@required

- (NSInteger)numberOfContentViewsInLoopScrollView:(LMJEndlessLoopScrollView *)loopScrollView;

- (UIView *)loopScrollView:(LMJEndlessLoopScrollView *)loopScrollView contentViewAtIndex:(NSInteger)index;

@optional
//
//- (BOOL)shouldAutomaticScrollInLoopScrollView:(LMJEndlessLoopScrollView *)loopScrollView;
//
//- (CGFloat)automaticScrollIntervalTimeInLoopScrollView:(LMJEndlessLoopScrollView *)loopScrollView;

- (void)loopScrollView:(LMJEndlessLoopScrollView *)loopScrollView currentContentViewAtIndex:(NSInteger)index;

- (void)loopScrollView:(LMJEndlessLoopScrollView *)loopScrollView didSelectContentViewAtIndex:(NSInteger)index;

@end




@interface LMJEndlessLoopScrollView : UIView 

@property (nonatomic,assign) id<LMJEndlessLoopScrollViewDelegate> delegate;

// 当duration<=0时，默认不自动滚动
- (id)initWithFrame:(CGRect)frame animationScrollDuration:(NSTimeInterval)duration;

@end
