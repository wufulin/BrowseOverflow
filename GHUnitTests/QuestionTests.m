//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"
#import "Answer.h"

@implementation QuestionTests

- (void)setUp {
    question = [[Question alloc] init];
    question.date = [NSDate distantPast];
    question.title = @"Do iPhones also dream of electric sheep?";
    question.score = 42;
    
    Answer *accepted = [[Answer alloc] init];
    accepted.score = 1;
    accepted.accepted = YES;
    [question addAnswer: accepted];

    lowScore = [[Answer alloc] init];
    lowScore.score = -4;
    [question addAnswer: lowScore];
    
    highScore = [[Answer alloc] init];
    highScore.score = 4;
    [question addAnswer: highScore];
}

- (void)tearDown {
    question = nil;
    lowScore = nil;
    highScore = nil;
}

- (void)testQuestionHasADate {
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    GHAssertEqualObjects(question.date, testDate, @"Question needs to provide its date");
}

- (void)testQuestionKeepScore {
    GHAssertEquals(question.score, 42, @"Questions needs a numeric score");
}

- (void)testQuestionHasATitle {
    GHAssertEqualObjects(question.title, @"Do iPhones also dream of electric sheep?", @"Question should know its title");
}

- (void)testQuestionCanHaveAnswersAdded {
    Answer *myAnswer = [[Answer alloc] init];
    GHAssertNoThrow([question addAnswer: myAnswer], @"Must be able to add answers");
}

- (void)testAcceptedAnswerIsFirst {
    GHAssertTrue([[question.answers objectAtIndex: 0] isAccepted], @"Accepted answer comes first");
}

- (void)testHighScoreAnswerBeforeLow {
    NSArray *answers = question.answers;
    NSInteger highIndex = [answers indexOfObject:highScore];
    NSInteger lowerIndex = [answers indexOfObject:lowScore];
    GHAssertTrue(highIndex < lowerIndex, @"High-scoring answer comes first");
}

@end
