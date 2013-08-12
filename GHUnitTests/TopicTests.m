//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "TopicTests.h"
#import "GHUnitIOS/GHUnit.h"
#import "Topic.h"

@implementation TopicTests

- (void)setUp{
    topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
}

- (void)tearDown{
    topic = nil;
}

- (void)testThatTopicExists{
    GHAssertNotNil(topic, @"should be able to create a Topic instance");
}

- (void)testThatTopicCanBeNamed{
    GHAssertEqualObjects(topic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag{
    GHAssertEqualObjects(topic.tag, @"iphone",@"Topics need to have tags");
}

@end
