//
//  ViewController.m
//  ZYCornerRadiusImageView
//
//  Created by lzy on 16/3/3.
//  Copyright © 2016年 lzy. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+CornerRadius.h"
#import "ZYImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    #pragma mark - UIImageView+CornerRadius
#pragma mark - 圆形
//    UIImageView *imageView = [[UIImageView alloc] initWithRoundingRectImageView];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
//    UIImageView *imageView = [[UIImageView alloc] init];
//    [imageView zy_cornerRadiusRoundingRect];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    

#pragma mark - 圆角一直有效
//    UIImageView *imageView = [[UIImageView alloc] init];
//    [imageView zy_cornerRadiusAdvance:100.0f rectCornerType:UIRectCornerAllCorners];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
//    UIImageView *imageView = [[UIImageView alloc] initWithCornerRadiusAdvance:100.0f rectCornerType:UIRectCornerAllCorners];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
#pragma mark - (with image)圆角一次性有效
    
//    UIImageView *imageView = [[UIImageView alloc] init];
//    [imageView setFrame:CGRectMake(100, 300, 200, 200)];
//    //需先有Frame
//    [imageView zy_cornerRadiusWithImage:[UIImage imageNamed:@"mac_dog"] cornerRadius:100.0f rectCornerType:UIRectCornerAllCorners];
//    //当次有效，再次setImage则无圆角
////    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
    

    #pragma mark - ZYImageView
    
//    ZYImageView *imageView = [[ZYImageView alloc] init];
//    [imageView zy_cornerRadiusAdvance:100.0f rectCornerType:UIRectCornerAllCorners];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];

    
    
//    ZYImageView *imageView = [[ZYImageView alloc] initWithCornerRadiusAdvance:100.0f rectCornerType:UIRectCornerAllCorners];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
    
//    ZYImageView *imageView = [ZYImageView cornerRadiusAdvance:100.0f rectCornerType:UIRectCornerAllCorners];
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
    
    
    
    ZYImageView *imageView = [[ZYImageView alloc] initWithRoundingRectImageView];
    imageView.image = [UIImage imageNamed:@"mac_dog"];
    [imageView zy_cornerRadiusAdvance:30.0f rectCornerType:UIRectCornerAllCorners];
    
    
    
    
    
    
    [imageView setFrame:CGRectMake(100, 300, 200, 200)];
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
