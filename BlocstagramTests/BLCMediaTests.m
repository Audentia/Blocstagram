//
//  BLCMediaTests.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/30/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BLCMedia.h"

@interface BLCMediaTests : XCTestCase

@end

@implementation BLCMediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id": @"3856",
                                       @"mediaURL" : @"www.example.com"};
//                                       @"likes" : @"27"};
//                                       @"caption" : @"what a photo",
//                                       @"comments" : @"damn gurrrrl"};
    
    BLCMedia *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
//    NSNumber *likes = [[NSNumber alloc] initWithInteger:testMedia.numberOfLikes];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
//    XCTAssertEqualObjects(testMedia.mediaURL, sourceDictionary[@"mediaURL"], @"The URL should be equal");
//    XCTAssertEqual(likes, sourceDictionary[@"likes"], @"The number of Likes should be equal");
//    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"], @"The Caption should be equal");
//    XCTAssertEqualObjects(testMedia.comments, sourceDictionary[@"comments"], @"The Comments should be equal");
}

@end
