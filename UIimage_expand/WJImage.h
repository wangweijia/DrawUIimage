//
//  WJImage.h
//  UIimage_expand
//
//  Created by apple on 7/9/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJImage : UIImage

@property (nonatomic, assign) CGRect bigRange;

@property (nonatomic, assign) CGRect smallRange;

+ (WJImage *)imageNamed:(NSString *)name;

- (UIImage *)resizableImageWithCapRange:(CGRect)bigF smallRange:(CGRect)smallF newSize:(CGSize)nSize;

- (UIImage *)resizableImageWithNewSize:(CGSize)nSize;

- (WJImage *)resizableImageWithCapRange:(CGRect)bigF smallRange:(CGRect)smallF;

@end
