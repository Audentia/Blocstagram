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
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"http://www.example.com"}},
                                       @"likes" : @{@"count" : @7},
                                       @"caption" : @{@"text" : @"yo boy"},
                                       @"comments" : @{@"data" : @[@{@"text" : @"hey"}]}};
    
    
    
    BLCMedia *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL.absoluteString, sourceDictionary[@"images"][@"standard_resolution"][@"url"], @"The URL should be equal");
    XCTAssertEqual(testMedia.numberOfLikes, [sourceDictionary[@"likes"][@"count"] integerValue], @"The number of Likes should be equal");
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"][@"text"], @"The Caption should be equal");
    XCTAssertEqual(testMedia.comments.count, [sourceDictionary[@"comments"][@"data"] count], @"The Comments should be equal");
}

@end