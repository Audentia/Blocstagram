//
//  BLCMedia.h
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BLCLikeButton.h"


typedef NS_ENUM(NSInteger, BLCMediaDownloadState) {
    BLCMediaDownloadStateNeedsImage             = 0,
    BLCMediaDownloadStateDownloadInProgress     = 1,
    BLCMediaDownloadStateNonRecoverableError    = 2,
    BLCMediaDownloadStateHasImage               = 3
};


@class BLCUser;

@interface BLCMedia : NSObject <NSCoding>

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) BLCUser *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;

@property (nonatomic, assign) BLCMediaDownloadState downloadState;

@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;

@property (nonatomic, assign) BLCLikeState likeState;
@property (nonatomic, assign) NSInteger numberOfLikes;

@property (nonatomic, strong) NSString *temporaryComment;


- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary;

@end
