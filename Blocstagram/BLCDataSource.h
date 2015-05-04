//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BLCDataSource : NSObject

+(instancetype) sharedInstance;
@property (nonatomic, strong) NSMutableArray *mediaItems;

@end
