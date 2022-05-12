//
//  TweakBoxView.m
//  GBA4iOS
//
//  Created by sma11case on 2022/5/8.
//  Copyright © 2022 Riley Testut. All rights reserved.
//

#import "TweakBoxView.h"
#import "GBAEmulatorCore.h"

@interface TweakBoxView()
@property (nonatomic, assign) CGRect last;
@end

@implementation TweakBoxView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
//        self.alpha = 0.5;
//        self.backgroundColor = [UIColor grayColor];
        
        if ([GBAEmulatorCore sharedCore].rom)
        {
            UIPinchGestureRecognizer *ge = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinch:)];
            [self addGestureRecognizer:ge];
            
            UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
            [self addGestureRecognizer:pan];
        }
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(24, 48+24, 88, 48);
        btn.backgroundColor = [UIColor grayColor];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn setTitle:@"Close" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(closeBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        UILabel *lb = [UILabel new];
        lb.textColor = [UIColor whiteColor];
        lb.backgroundColor = [UIColor clearColor];
        lb.font = [UIFont systemFontOfSize:32];
        lb.text = @"Use Pinch/Pan Gesture to zoom";
        lb.frame= frame;
        lb.textAlignment = NSTextAlignmentCenter;
        [self addSubview:lb];
    }
    
    return self;
}

- (void)closeBtn: (id)sender
{
    [self removeFromSuperview];
}

- (void)pan: (UIPanGestureRecognizer *)pan
{
    if (pan.state == UIGestureRecognizerStateBegan)
    {
        _last = [GBAEmulatorCore sharedCore].eaglView.frame;
        return;
    }
    
    CGPoint transP = [pan translationInView:pan.view];
    
    CGRect f1 = _last;
    f1.origin.x += transP.x;
    f1.origin.y += transP.y;
    
    [[GBAEmulatorCore sharedCore] updateEAGLViewForSize:CGSizeMake(0, 0) screen:[UIScreen mainScreen] pos:f1.origin];
    if (pan.state == UIGestureRecognizerStateEnded) [pan setTranslation:CGPointZero inView:pan.view];
}

- (void)pinch: (UIPinchGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateBegan) return;
    
    CGSize maxScreenSize = [[GBAEmulatorCore sharedCore] calcViewSize:[UIScreen mainScreen].bounds.size];
    maxScreenSize.width *= sender.scale;
    maxScreenSize.height *= sender.scale;
    [[GBAEmulatorCore sharedCore] updateEAGLViewForSize:maxScreenSize screen:[UIScreen mainScreen]];

//    if (sender.state == UIGestureRecognizerStateEnded) sender.scale = 1.0;
}

@end
