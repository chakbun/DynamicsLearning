//
//  GravityViewController.m
//  DynamicsDemo
//
//  Created by Jaben on 13-9-27.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import "GravityViewController.h"

@interface GravityViewController ()

@end

@implementation GravityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIDynamicAnimator* animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior* gravityBeahvior = [[UIGravityBehavior alloc] initWithItems:@[_gravityView]];
    [animator addBehavior:gravityBeahvior];
    self.animator = animator;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
