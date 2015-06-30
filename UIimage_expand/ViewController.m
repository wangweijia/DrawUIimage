//
//  ViewController.m
//  UIimage_expand
//
//  Created by apple on 6/26/15.
//  Copyright (c) 2015 com.eku001. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+UIImageCategory.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *bigImageView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *left = [UIImage imageNamed:@"home_newreply_btn_nor"];
    
    _imageView2.image = left;

    CGRect big = CGRectMake(18, 8, 14, 24);
    CGRect small = CGRectMake(20, 10, 10, 20);
    CGSize bigSize = CGSizeMake(200, 40);
    
    self.bigImageView.image = [left resizableImageWithCapInsets:big smallInsets:small imageSize:bigSize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
