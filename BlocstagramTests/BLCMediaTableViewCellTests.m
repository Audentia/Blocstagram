//
//  BLCMediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/30/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BLCMediaTableViewCell.h"
#import "BLCMedia.h"

@interface BLCMediaTableViewCellTests : XCTestCase

@end

@implementation BLCMediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testHeightForMediaItemWithImage {
   
    NSDictionary *sourceDictionary = @{@"id": @"3856", @"user" : @{@"id": @"8675309",
                                                                   @"username" : @"keanu",
                                                                   @"full_name" : @"John Wick",
                                                                   @"profile_picture" : @"http://www.example.com/example.jpg"},
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"http://www.example.com", @"width" : @640, @"height" : @640}},
                                       @"likes" : @{@"count" : @7},
                                       @"caption" : @{@"text" : @"yo boy", @"from" : @{@"id": @"8675309",
                                                                                       @"username" : @"Billy",
                                                                                       @"full_name" : @"Bill Clem",
                                                                                       @"profile_picture" : @"http://www.example.com/example.jpg"}, @"id" : @"123456"},
                                       @"comments" : @{@"data" : @[@{@"text" : @"hey", @"from" : @{@"id": @"8675309",
                                                                                                   @"username" : @"Billy",
                                                                                                   @"full_name" : @"Bill Clem",
                                                                                                   @"profile_picture" : @"http://www.example.com/example.jpg"}}]}, };
    
    UIImage *samplePicture = [UIImage imageNamed:@"1.jpg"];
    BLCMedia *testBLCMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    
    testBLCMedia.image = samplePicture;
    
    BLCMediaTableViewCell *testCell = [[BLCMediaTableViewCell alloc] init];
    
    CGFloat cellHeight = testCell.imageHeightConstraint.constant;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], cellHeight);
    } else {
        XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], testBLCMedia.image.size.height);
    }
    
}

//- (void) testHeightForMediaItemNoImage {
//    BLCMedia *testBLCMedia = [[BLCMedia alloc] init];
//
//    
//    testBLCMedia.image = nil;
//    
//    XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], 100);
//
//    
//}

@end
