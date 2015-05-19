//
//  BLCLikeLabel.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/18/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "BLCLikeLabel.h"

@implementation BLCLikeLabel

-(instancetype) init {
    self = [super init];
    
    if (self) {
//        have self.numberOfLikes equal to number of likes read from DataSource
        
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
//    label fill entire view
}

- (void) displayNumberOfLikes:(NSInteger)likes {
    _numberOfLikes = likes;
//    [self label] set the label as the number of likes
}

@end
