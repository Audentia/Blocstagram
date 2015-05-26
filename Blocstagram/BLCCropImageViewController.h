//
//  BLCCropImageViewController.h
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/20/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "BLCMediaFullScreenViewController.h"

@class BLCCropImageViewController;

@protocol BLCCropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface BLCCropImageViewController : BLCMediaFullScreenViewController

- (instancetype) initWithImage:(UIImage *)sourceImage;

@property (nonatomic, weak) NSObject <BLCCropImageViewControllerDelegate> *delegate;


@end
