//
//  NSTimer+ForLMJEndlessLoopScrollView.m
//  LMJEndlessLoopScroll
//
//  Created by Major on 16/3/10.
//  Copyright © 2016年 iOS开发者公会. All rights reserved.
//
//  iOS开发者公会-技术1群 QQ群号：87440292
//  iOS开发者公会-技术2群 QQ群号：232702419
//  iOS开发者公会-议事区  QQ群号：413102158
//

#import "NSTimer+ForLMJEndlessLoopScrollView.h"

@implementation NSTimer (ForLMJEndlessLoopScrollView)


- (void)pause{
    
    if ([self isValid]) {
        [self setFireDate:[NSDate distantFuture]];
    }
}

- (void)restart{
    
    if ([self isValid]) {
        [self setFireDate:[NSDate date]];
    }
}

- (void)restartAfterTimeInterval:(NSTimeInterval)interval{
    
    if ([self isValid]) {
        [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
    }
}

@end
