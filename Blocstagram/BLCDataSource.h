//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BLCMedia;

@interface BLCDataSource : NSObject

+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;

- (void) deleteMediaItem:(BLCMedia *)item;

@end
