//
//  BLCShareStuff.h
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/11/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLCMedia.h"

@interface BLCShareStuff : NSObject

+ (UIActivityViewController *) shareItems:(BLCMedia *)thingToShare;

@end
