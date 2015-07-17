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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *left = [UIImage imageNamed:@"home_newreply_btn_nor"];
    _imageView2.image = left;
    
    WJImage *right = [WJImage imageNamed:@"home_newreply_btn_nor"];
    
    CGRect big = CGRectMake(18, 8, 14, 24);
    CGRect small = CGRectMake(20, 8, 10, 24);
    
    _bigImageView.wjImage = [right resizableImageWithCapRange:big smallRange:small];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
