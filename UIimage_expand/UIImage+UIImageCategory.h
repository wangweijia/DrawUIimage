//
//  UIImage+UIImageCategory.h
//  UIimage_expand
//
//  Created by apple on 6/26/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageCategory)

typedef struct imageFrame {
    CGPoint LeftTop;
    CGPoint RightTop;
    CGPoint LeftBottom;
    CGPoint RightBottom;
} imageFrame;

- (UIImage *)resizableImageWithCapInsets:(CGRect)bigF smallInsets:(CGRect)smallF imageSize:(CGSize)aSize;

@end
