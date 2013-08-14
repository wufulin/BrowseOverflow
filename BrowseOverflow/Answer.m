//
//  Answer.m
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "Answer.h"
#import "Person.h"

@implementation Answer

@synthesize text;
@synthesize person;
@synthesize accepted;
@synthesize score;

- (NSComparisonResult)compare:(Answer *)otherAnswer {
    if (accepted && !(otherAnswer.accepted)) {
        return NSOrderedAscending;
    }else if (!accepted && otherAnswer.accepted) {
        return NSOrderedDescending;
    }
    
    // Both accepted or unaccepted
    if (score > otherAnswer.score) {
        return NSOrderedAscending;
    }else if (score < otherAnswer.score) {
        return NSOrderedDescending;
    }else {
        return NSOrderedSame;
    }
}

@end
