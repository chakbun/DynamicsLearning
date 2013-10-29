//
//  PushViewController.m
//  DynamicsDemo
//
//  Created by Jaben on 13-9-28.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIDynamicAnimator* animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    switch (self.modeIndex) {
        case 0:{
            UIPushBehavior *pushBeahvior = [[UIPushBehavior alloc] initWithItems:@[_pushView] mode:UIPushBehaviorModeContinuous];
            [pushBeahvior setPushDirection:CGVectorMake(0, 10)];
            [animator addBehavior:pushBeahvior];
            break;
        }
        case 1:{
            [_pushView setCenter:CGPointMake(160, 246)];
            UISnapBehavior *snapBehavior = [[UISnapBehavior alloc] initWithItem:_pushView snapToPoint:CGPointMake(160, 200)];
            [snapBehavior setDamping:0.f];
            [animator addBehavior:snapBehavior];
            break;
        }
        case 2:{
            [_pushView setCenter:CGPointMake(-_pushView.frame.size.height/2, -_pushView.frame.size.height/2)];
            UIView *attachedView =[[UIView alloc] initWithFrame:CGRectMake(301, 549, 38,38)];
            [attachedView setBackgroundColor:[UIColor orangeColor]];
            [self.view addSubview:attachedView];
            
            UIAttachmentBehavior *attactmentBehavior = [[UIAttachmentBehavior alloc] initWithItem:_pushView attachedToItem:attachedView];
            [attactmentBehavior setLength:100.f];
            [attactmentBehavior setFrequency:1];
            [attactmentBehavior setAnchorPoint:CGPointMake(100, 100)];
            [animator addBehavior:attactmentBehavior];
            break;
        }
        default:
            break;
    }

    self.animator = animator;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
