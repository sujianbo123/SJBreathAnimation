//
//  ViewController.m
//  SJBreathAnimation
//
//  Created by edz on 2019/1/8.
//  Copyright © 2019年 edz. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Animation.h"

@interface ViewController ()
@property (nonatomic,strong)UIImageView * imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"header"]];
    [self.imageView startAnimation];
    self.imageView.frame = CGRectMake(0, 0, 100, 100);
    self.imageView.center = self.view.center;
    [self.view addSubview:self.imageView];
   
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.imageView stopAnimation];
}


@end
