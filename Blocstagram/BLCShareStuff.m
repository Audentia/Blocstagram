//
//  BLCShareStuff.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/11/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "BLCShareStuff.h"

@implementation BLCShareStuff

- (void) shareItems:(NSMutableArray *)itemsToShare {
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}


@end
