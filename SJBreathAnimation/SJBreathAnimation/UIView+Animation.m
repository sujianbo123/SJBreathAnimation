//
//  UIView+Animation.m
//  SJBreathAnimation
//
//  Created by edz on 2019/1/8.
//  Copyright © 2019年 edz. All rights reserved.
//

#import "UIView+Animation.h"
#import <objc/runtime.h>

@interface UIView ()
//@property (nonatomic,strong)CABasicAnimation *pulseAnimation;
@end

static const void *PulseAnimationKey = &PulseAnimationKey;

@implementation UIView (Animation)

- (void)startAnimation
{
    float bigSize = 1.1;
    CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.duration = 0.5;
    pulseAnimation.toValue = [NSNumber numberWithFloat:bigSize];
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    // 倒转动画
    pulseAnimation.autoreverses = YES;
    // 设置重复次数为无限大
    pulseAnimation.repeatCount = FLT_MAX;
    // 添加动画到layer
    [self.layer addAnimation:pulseAnimation forKey:@"transform.scale"];
   // objc_setAssociatedObject(self, PulseAnimationKey, pulseAnimation, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)stopAnimation
{
     [self.layer removeAnimationForKey:@"transform.scale"];
}

@end
