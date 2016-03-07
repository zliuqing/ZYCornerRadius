# ZYCornerRadius
A Category to make cornerRadius for UIImageView have no Offscreen-Rendered, be more efficiency
![](https://img.shields.io/badge/pod-v0.3.1-blue.svg)
![](https://img.shields.io/badge/build-passing-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT-brightgreen.svg)  




<br>
##CocoaPods:  
未来会更新oc版
```
pod 'ZYThumbnailTableView', '~> 0.2.1'
``` 

<br>
##Usage:  
配置一个圆角UIImageView，传入圆角半径和圆角类型  
```objc
+ (UIImageView *)cornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;
- (instancetype)initWithCornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;
```  
配置一个圆形的UIImageView  
```objc
+ (UIImageView *)roundingRectImageView;
- (instancetype)initWithRoundingRectImageView;
```  
直接为调用者UIImageView设置圆角图片，传入UIImage，圆角半径和圆角类型  
```objc
- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;
```  



<br>
##Relation:  
[@liuzhiyi1992](https://github.com/liuzhiyi1992) on Github  

<br>
##License:  
ZYThumbnailTableView is released under the MIT license. See LICENSE for details.
