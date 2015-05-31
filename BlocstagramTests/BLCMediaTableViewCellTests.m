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
    UIImage *samplePicture = [UIImage imageNamed:@"1.jpg"];
    BLCMedia *testBLCMedia = [[BLCMedia alloc] init];
    
    testBLCMedia.image = samplePicture;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], 500);
    } else {
        XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], 320);
    }
    
}

- (void) testHeightForMediaItemNoImage {
    BLCMedia *testBLCMedia = [[BLCMedia alloc] init];

    
    testBLCMedia.image = nil;
    
    XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:testBLCMedia width:testBLCMedia.image.size.width], 100);

    
}

@end
