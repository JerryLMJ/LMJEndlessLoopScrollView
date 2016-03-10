//
//  ViewController.m
//  LMJEndlessLoopScroll
//
//  Created by Major on 16/3/10.
//  Copyright © 2016年 iOS开发者公会. All rights reserved.
//

#import "ViewController.h"

#import "LMJEndlessLoopScrollView.h"

@interface ViewController () <LMJEndlessLoopScrollViewDelegate>
{
    NSMutableArray * _contentViewsDataArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    _contentViewsDataArr = [NSMutableArray array];
    
    NSArray *colorArray = @[[UIColor cyanColor],[UIColor blueColor],[UIColor greenColor],[UIColor yellowColor],[UIColor purpleColor]];
    for (int i = 0; i < 5; i++) {
        UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 280, 200)];
        tempLabel.backgroundColor = colorArray[i];
        tempLabel.textAlignment   = NSTextAlignmentCenter;
        tempLabel.text            = [NSString stringWithFormat:@"%d",i];
        tempLabel.font            = [UIFont boldSystemFontOfSize:50];
        [_contentViewsDataArr addObject:tempLabel];
    }
    
    
    LMJEndlessLoopScrollView * scrollView = [[LMJEndlessLoopScrollView alloc] initWithFrame:CGRectMake(20, 100, 280, 200) animationScrollDuration:3];
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollView];
    
    
}

#pragma mark - LMJEndlessLoopScrollView Delegate
- (NSInteger)numberOfContentViewsInLoopScrollView:(LMJEndlessLoopScrollView *)loopScrollView{
    return 5;
}

- (UIView *)loopScrollView:(LMJEndlessLoopScrollView *)loopScrollView contentViewAtIndex:(NSInteger)index{
    return _contentViewsDataArr[index];
}

- (void)loopScrollView:(LMJEndlessLoopScrollView *)loopScrollView didSelectContentViewAtIndex:(NSInteger)index{
    NSLog(@"---------%ld",index);
}

@end
