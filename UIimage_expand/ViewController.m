//
//  ViewController.m
//  UIimage_expand
//
//  Created by apple on 6/26/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import "ViewController.h"
#import "WJImage.h"
#import "WJImageView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WJImageView *bigImageView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

@property (weak, nonatomic) IBOutlet UIImageView *imageView4;

@property (weak, nonatomic) IBOutlet UIImageView *imageView5;

@property (weak, nonatomic) IBOutlet UIImageView *imageView6;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 50 * 40
    UIImage *left = [UIImage imageNamed:@"home_newreply_btn_nor"];
    _imageView2.image = left;
    
    WJImage *right = [WJImage imageNamed:@"home_newreply_btn_nor"];
    
    CGRect big = CGRectMake(16, 15, 18, 6);
    CGRect small = CGRectMake(21, 17, 8, 2);
    
    //200 * 60
    _bigImageView.wjImage = [right resizableImageWithCapRange:big smallRange:small];
    
    //200 * 40
    _imageView3.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 40.0)];

    // 50 * 60
    _imageView4.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(50.0, 60.0)];
    
    // 200 * 60 
    _imageView5.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 60.0) range:CGSizeMake(50.0, 0)];
    
    // 200 * 60
    _imageView6.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 60.0) range:CGSizeMake(160.0, 0)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
