//
//  BLCShareStuff.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/11/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "BLCShareStuff.h"


@implementation BLCShareStuff

+ (UIActivityViewController *) shareItems:(BLCMedia *)thingToShare {
    NSMutableArray *itemsToShare = [NSMutableArray array];
    
    if (thingToShare.caption.length > 0) {
        [itemsToShare addObject:thingToShare.caption];
    }
    
    if (thingToShare.image) {
        [itemsToShare addObject:thingToShare.image];
    }
    
    if (itemsToShare.count > 0) {
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
        return activityVC;
    }
    return 0;
}


@end
