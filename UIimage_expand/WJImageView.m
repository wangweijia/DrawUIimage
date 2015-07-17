//
//  WJImageView.m
//  UIimage_expand
//
//  Created by apple on 7/9/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import "WJImageView.h"
#import "WJImage.h"

@implementation WJImageView

- (void)layoutSubviews{
    [super layoutSubviews];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_wjImage) {
            self.image = [self.wjImage resizableImageWithNewSize:self.frame.size];
        }
    });
}

@end
