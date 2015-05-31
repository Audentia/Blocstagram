//
//  BLCComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/30/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BLCComposeCommentView.h"

@interface BLCComposeCommentViewTests : XCTestCase

@end

@implementation BLCComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testCommentViewText {
    BLCComposeCommentView *testCompose = [[BLCComposeCommentView alloc] init];
    NSString *testString = @"The User is typing";
    [testCompose setText:(NSString *)testString];
    if ([testCompose isWritingComment] == YES) {
        NSLog(@"yay Test Passes");
    } else {
        XCTFail(@"Failure");
    }
}

- (void) testCommentViewNoText {
    BLCComposeCommentView *testCompose = [[BLCComposeCommentView alloc] init];
    [testCompose setText:nil];

    if ([testCompose isWritingComment] == NO) {
        NSLog(@"yay Test Passes");
    } else {
        XCTFail(@"Failure");
    }
}

@end
