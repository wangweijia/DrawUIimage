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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *left = [UIImage imageNamed:@"home_newreply_btn_nor"];
    _imageView2.image = left;
    
    WJImage *right = [WJImage imageNamed:@"home_newreply_btn_nor"];
    
    CGRect big = CGRectMake(16, 8, 18, 24);
    CGRect small = CGRectMake(21, 8, 8, 24);
    
    _bigImageView.wjImage = [right resizableImageWithCapRange:big smallRange:small];
    
    _imageView3.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 40.0) range:CGSizeMake(70, 0)];
    
    _imageView4.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 40.0) range:CGSizeMake(160, 0)];
    
    _imageView5.image = [right resizableImageWithCapRange:big smallRange:small newSize:CGSizeMake(200.0, 40.0) range:CGSizeMake(175, 0)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
