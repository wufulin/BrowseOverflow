//
//  Answer.h
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Answer : NSObject

@property (copy) NSString *text;
@property (retain) Person *person;
@property (getter=isAccepted) BOOL accepted;
@property NSInteger score;

- (NSComparisonResult)compare: (Answer *)otherAnswer;

@end
