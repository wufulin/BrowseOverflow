//
//  AnswerTests.m
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "AnswerTests.h"
#import "Person.h"
#import "Answer.h"

@implementation AnswerTests

- (void)setUp {
    answer = [[Answer alloc] init];
    answer.text = @"The answer is 42";
    answer.person = [[Person alloc] initWithName:@"Graham Lee" avatarLocation:@"http://example.com/avatar.png"];
    answer.score = 42;
    
    otherAnswer = [[Answer alloc] init];
    otherAnswer.text = @"I have the answer you need";
    otherAnswer.score = 42;
}

- (void)tearDown {
    answer = nil;
    otherAnswer = nil;
}

- (void)testAnswerHasSomeText {
    GHAssertEqualObjects(answer.text, @"The answer is 42", @"Answers need to contain some text");
}

- (void)testSomeoneProvidedTheAnswer {
    GHAssertTrue([answer.person isKindOfClass:[Person class]], @"A Person gave this Answer");
}

- (void)testAnswersNotAcceptedByDefault {
    GHAssertFalse(answer.accepted, @"Answer not accepted by default");
}

- (void)testAnswerCanBeAccepted {
    GHAssertNoThrow(answer.accepted = YES, @"It is possible to accept an answer");
}

- (void)testAnswerHasAScore {
    GHAssertTrue(answer.score == 42, @"Answer's score can be retrieved");
}

- (void)testAcceptedAnswerComesBeforeUnaccepted {
    otherAnswer.accepted = YES;
    otherAnswer.score = answer.score + 10;
    GHAssertEquals([answer compare: otherAnswer], NSOrderedDescending, @"Accepted answer should come first");
    GHAssertEquals([otherAnswer compare: answer], NSOrderedAscending, @"Unaccepted answer should come last");
}

- (void)testAnswerWithEqualScoresCompareEqually {
    GHAssertEquals([answer compare: otherAnswer], NSOrderedSame, @"Both answers of equal rank");
    GHAssertEquals([otherAnswer compare: answer], NSOrderedSame, @"Each answer has the same rank");
}

- (void)testLowerScoringAnswerComesAfterHigher {
    otherAnswer.score = answer.score + 10;
    GHAssertEquals([answer compare: otherAnswer], NSOrderedDescending, @"Higher score comes first");
    GHAssertEquals([otherAnswer compare: answer], NSOrderedAscending, @"Lower score comes last");
}
@end
