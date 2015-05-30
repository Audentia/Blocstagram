//
//  BLCFiltersViewCell.m
//  Blocstagram
//
//  Created by Douglas Hewitt on 5/26/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "BLCFiltersViewCell.h"

@implementation BLCFiltersViewCell

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        static NSInteger imageViewTag = 1000;
        static NSInteger labelTag = 1001;
        self.thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
        self.label = (UILabel *)[self.contentView viewWithTag:labelTag];
        
        
        //    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.filterCollectionView.collectionViewLayout;
        //    CGFloat thumbnailEdgeSize = flowLayout.itemSize.width;
        
        if (!self.thumbnail) {
            self.thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
            self.thumbnail.contentMode = UIViewContentModeScaleAspectFill;
            self.thumbnail.tag = imageViewTag;
            self.thumbnail.clipsToBounds = YES;
            
            [self.contentView addSubview:self.thumbnail];
        }
        
        if (!self.label) {
            self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 50, 20)];
            self.label.tag = labelTag;
            self.label.textAlignment = NSTextAlignmentCenter;
            self.label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
            [self.contentView addSubview:self.label];
        }

    }
    return self;
}

@end
