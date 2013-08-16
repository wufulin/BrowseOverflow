//
//  StackOverflowManager.h
//  BrowseOverflow
//
//  Created by wufulin on 13-8-14.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StackOverflowCommunicator;

@interface StackOverflowManager : NSObject

@property (weak, nonatomic) id<StackOverflowManagerDelegate> delegate;
@property (strong) StackOverflowCommunicator *communicator;

@end
