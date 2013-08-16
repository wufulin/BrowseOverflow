//
//  StackOverflowManager.m
//  BrowseOverflow
//
//  Created by wufulin on 13-8-14.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "StackOverflowManager.h"

@implementation StackOverflowManager

@synthesize delegate;
@synthesize communicator;

- (void)setDelegate:(id<StackOverflowManagerDelegate>)newDelegate {
    if (newDelegate && ![newDelegate conformsToProtocol:@protocol(StackOverflowManagerDelegate)]) {
        [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Delegate object does not conform to the delegate protocol" userInfo:nil] raise];
    }
    delegate = newDelegate;
}

@end
