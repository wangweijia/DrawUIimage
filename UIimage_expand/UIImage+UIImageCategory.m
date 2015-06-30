//
//  UIImage+UIImageCategory.m
//  UIimage_expand
//
//  Created by apple on 6/26/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import "UIImage+UIImageCategory.h"

@implementation UIImage (UIImageCategory)

//
//+ (UIImage *)combine:(UIImage *)leftImage right:(UIImage *)rightImage {
//    
//    CGFloat width = leftImage.size.width * 2;
//    CGFloat height = leftImage.size.height;
//    CGSize offScreenSize = CGSizeMake(width, height);
//    
//    UIGraphicsBeginImageContext(offScreenSize);
//    
//    CGRect rect = CGRectMake(0, 0, width/2, height);
//    [leftImage drawInRect:rect];
//    
//    rect.origin.x += width/2;
//    [rightImage drawInRect:rect];
//    
//    UIImage* imagez = UIGraphicsGetImageFromCurrentImageContext();
//    
//    UIGraphicsEndImageContext();
//    
//    return imagez;
//}
//
//+ (UIImage *)combine:(NSArray *)array{
//    
//    UIImage *aImage = array[0];
//    
//    CGFloat width = aImage.size.width * array.count;
//    CGFloat height = aImage.size.height * 2;
//    CGSize offScreenSize = CGSizeMake(width, height);
//    
//    UIGraphicsBeginImageContext(offScreenSize);
//    
//    CGFloat aw = aImage.size.width;
//    CGFloat ah = aImage.size.height;
//    
//    CGRect rect = CGRectMake(0, 0, aw, ah);
//    
//    for (NSInteger i = 0; i < array.count; i++) {
//        UIImage *aImagee = array[i];
//        [aImagee drawInRect:rect];
//        rect.origin.x += aw;
//    }
//    
//    UIImage *aImagee = array[0];
//    [aImagee drawInRect:CGRectMake(0, ah, aw, ah)];
//    
//    UIImage* imagez = UIGraphicsGetImageFromCurrentImageContext();
//    
//    UIGraphicsEndImageContext();
//    
//    return imagez;
//}

- (UIImage *)combineImageArray:(NSArray *)iArray frameArray:(NSArray *)fArray newImageSize:(CGSize)nSize{
    
    UIGraphicsBeginImageContext(nSize);
    
    for (NSInteger i = 0; i < iArray.count; i++) {
        
        NSArray *aArray = fArray[i];
        
        UIImage *aImagee = iArray[i];
        CGRect rect = CGRectMake([aArray[0] floatValue], [aArray[1] floatValue], [aArray[2] floatValue], [aArray[3] floatValue]);
            [aImagee drawInRect:rect];
    }
    
    UIImage* imagez = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return imagez;
}

/*-------------------------切图------------------------------*/

//+ (UIImage*)captureView:(UIView *)theView frame:(CGRect)fra{
//    
//    UIGraphicsBeginImageContext(theView.frame.size);
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    [theView.layer renderInContext:context];
//    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    CGImageRef ref = CGImageCreateWithImageInRect(img.CGImage, fra);
//    UIImage *i = [UIImage imageWithCGImage:ref];
//    CGImageRelease(ref);
//    return i;
//    
//}
//
//+ (UIImage*)createImageBy:(UIImage *)aImage frame:(CGRect)fra{
//    
//    CGImageRef ref = CGImageCreateWithImageInRect(aImage.CGImage, fra);
//    UIImage *i = [UIImage imageWithCGImage:ref];
//    CGImageRelease(ref);
//    return i;
//    
//}

- (UIImage *)captureImageByFrame:(NSArray *)array{
    
    CGRect fra = CGRectMake([array[0] floatValue], [array[1] floatValue], [array[2] floatValue], [array[3] floatValue]);
    
    CGImageRef ref = CGImageCreateWithImageInRect(self.CGImage, fra);
    UIImage *i = [UIImage imageWithCGImage:ref];
    CGImageRelease(ref);
    return i;
    
}

- (NSArray *)createArray:(CGRect)bigF smallInsets:(CGRect)smallF imageSize:(CGSize)imageSize{
    CGFloat bigX = bigF.origin.x;
    CGFloat bigY = bigF.origin.y;
    CGFloat bigW = bigF.size.width;
    CGFloat bigH = bigF.size.height;
    
    CGFloat smallX = smallF.origin.x;
    CGFloat smallY = smallF.origin.y;
    CGFloat smallW = smallF.size.width;
    CGFloat smallH = smallF.size.height;
    
    // x , y , w , h
    NSArray *array1  = @[@(0),@(0),@(bigX),@(bigY)];
    
    NSArray *array2  = @[@([array1[0] floatValue]+[array1[2] floatValue]),array1[1],@(smallX-bigX),array1[3]];
    
    NSArray *array3  = @[@([array2[0] floatValue]+[array2[2] floatValue]),array1[1],@(smallW),array1[3]];
    
    NSArray *array4  = @[@([array3[0] floatValue]+[array3[2] floatValue]),array1[1],@(bigX+bigW-smallX-smallW),array1[3]];
    
    NSArray *array5  = @[@([array4[0] floatValue]+[array4[2] floatValue]),array1[1],@(imageSize.width-bigX-bigW),array1[3]];
    
    NSArray *array6  = @[array5[0],@([array5[3] floatValue]+[array5[1] floatValue]),array5[2],@(smallY-bigY)];
    
    NSArray *array7  = @[array5[0],@([array6[3] floatValue]+[array6[1] floatValue]),array5[2],@(smallH)];
    
    NSArray *array8  = @[array5[0],@([array7[3] floatValue]+[array7[1] floatValue]),array5[2],@(bigH+bigY-smallH-smallY)];
    
    NSArray *array9  = @[array5[0],@([array8[3] floatValue]+[array8[1] floatValue]),array5[2],@(imageSize.height-bigY-bigH)];
    
    NSArray *array10 = @[array4[0],array9[1],array4[2],array9[3]];
    
    NSArray *array11 = @[array3[0],array9[1],array3[2],array9[3]];
    
    NSArray *array12 = @[array2[0],array9[1],array2[2],array9[3]];
    
    NSArray *array13 = @[array1[0],array9[1],array1[2],array9[3]];
    
    NSArray *array14 = @[array1[0],array8[1],array1[2],array8[3]];
    
    NSArray *array15 = @[array1[0],array7[1],array1[2],array7[3]];
    
    NSArray *array16 = @[array1[0],array6[1],array1[2],array6[3]];
    
    NSArray *array17 = @[@(bigX),@(bigY),@(bigW),@(bigH)];
    
    NSArray *tempArray = @[array1,array2,array3,array4,array5,array6,array7,array8,array9,
                           array10,array11,array12,array13,array14,array15,array16,array17];
    
    return tempArray;
}


//resizableImageWithCapInsets
- (UIImage *)resizableImageWithCapInsets:(CGRect)bigF smallInsets:(CGRect)smallF imageSize:(CGSize)aSize{
    
    CGFloat conefficient = CGImageGetHeight([self CGImage]) / self.size.height;
    
    bigF.origin.x *= conefficient;
    bigF.origin.y *= conefficient;
    bigF.size.width *= conefficient;
    bigF.size.height *= conefficient;
    
    smallF.origin.x *= conefficient;
    smallF.origin.y *= conefficient;
    smallF.size.height *= conefficient;
    smallF.size.width *= conefficient;
    
    aSize.height *= conefficient;
    aSize.width *= conefficient;
    
    CGSize imageSize = self.size;
    imageSize.width *= conefficient;
    imageSize.height *= conefficient;
    
    CGFloat heighProportion = (aSize.height - imageSize.height);
    CGFloat widthProportion = (aSize.width - imageSize.width);
    
    
    CGRect cBigF = bigF;
    cBigF.size.width = bigF.size.width + widthProportion;
    cBigF.size.height = bigF.size.height + heighProportion;
    
    CGRect cSmallF = smallF;
    cSmallF.origin.x = smallF.origin.x + widthProportion / 2;
    cSmallF.origin.y = smallF.origin.y + heighProportion / 2;
    
    NSArray *OldArray = [self createArray:bigF smallInsets:smallF imageSize:imageSize];
    NSArray *NewArray = [self createArray:cBigF smallInsets:cSmallF imageSize:aSize];
    
    NSMutableArray *UIImageArray = [NSMutableArray array];
    
    for (NSInteger i = 0; i < OldArray.count; i++) {
        UIImage *aImage = [self captureImageByFrame:OldArray[i]];
        
        [UIImageArray addObject:aImage];
    }
    
    UIImage *newImage = [self combineImageArray:UIImageArray frameArray:NewArray newImageSize:aSize];
    
    return newImage;
}


@end
