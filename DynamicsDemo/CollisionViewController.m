//
//  CollisionViewController.m
//  DynamicsDemo
//
//  Created by Jaben on 13-9-27.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import "CollisionViewController.h"

@interface CollisionViewController ()

@end

@implementation CollisionViewController

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
    
    [_collisionView setTransform:CGAffineTransformMakeRotation(45/3.14)];
    
    UIDynamicAnimator* animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior* gravityBeahvior = [[UIGravityBehavior alloc] initWithItems:@[_collisionView]];
    [animator addBehavior:gravityBeahvior];
    
    UICollisionBehavior* collisionBeahvior = [[UICollisionBehavior alloc] initWithItems:@[_collisionView]];
    [animator addBehavior:collisionBeahvior];
    collisionBeahvior.translatesReferenceBoundsIntoBoundary = YES;
    
    self.animator = animator;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
