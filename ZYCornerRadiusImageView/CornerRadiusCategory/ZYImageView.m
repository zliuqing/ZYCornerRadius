//
//  ZYImageView.m
//  ZYCornerRadiusImageView
//
//  Created by lzy on 16/3/3.
//  Copyright © 2016年 lzy. All rights reserved.
//

#import "ZYImageView.h"

@implementation ZYImageView

//-setImage并不会调用-layoutSubView,不担心死循环





/**
 * @brief create Rounding UIImageView, no off-screen-rendered
 */
+ (ZYImageView *)roundingRectImageView {
    ZYImageView *imageView = [[ZYImageView alloc] init];
    [imageView zy_cornerRadiusRoundingRect];
    return imageView;
}

/**
 * @brief init the Rounding UIImageView, no off-screen-rendered
 */
- (instancetype)initWithRoundingRectImageView {
    self = [super init];
    if (self) {
        [self zy_cornerRadiusRoundingRect];
    }
    return self;
}

/**
 * @brief create UIImageView with cornerRadius, no off-screen-rendered
 */
+ (ZYImageView *)cornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    ZYImageView *imageView = [[ZYImageView alloc] init];
    [imageView zy_cornerRadiusAdvance:cornerRadius rectCornerType:rectCornerType];
    return imageView;
}

/**
 * @brief init the UIImageView with cornerRadius, no off-screen-rendered
 */
- (instancetype)initWithCornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    self = [super init];
    if (self) {
        [self zy_cornerRadiusAdvance:cornerRadius rectCornerType:rectCornerType];
    }
    return self;
}

#pragma mark - Kernel
/**
 * @brief clip the cornerRadius with image, UIImageView must be setFrame before, no off-screen-rendered
 */
- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    CGSize size = self.bounds.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize cornerRadii = CGSizeMake(cornerRadius, cornerRadius);
    
    UIGraphicsBeginImageContextWithOptions(size, NO, scale);
    UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCornerType cornerRadii:cornerRadii];
    [cornerPath addClip];
    [image drawInRect:self.bounds];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

/**
 * @brief set cornerRadius for UIImageView, no off-screen-rendered
 */
- (void)zy_cornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    self.cornerRadius = cornerRadius;
    self.rectCornerType = rectCornerType;
    self.isRounding = NO;
}

/**
 * @brief become Rounding UIImageView, no off-screen-rendered
 */
- (void)zy_cornerRadiusRoundingRect {
    self.isRounding = YES;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (_isRounding) {
        [self zy_cornerRadiusWithImage:self.image cornerRadius:self.frame.size.width/2 rectCornerType:UIRectCornerAllCorners];
    } else if (0 != _cornerRadius && _rectCornerType && nil != self.image) {
        [self zy_cornerRadiusWithImage:self.image cornerRadius:_cornerRadius rectCornerType:_rectCornerType];
    }
}

@end
