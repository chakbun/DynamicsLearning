//
//  CollisionViewController.h
//  DynamicsDemo
//
//  Created by Jaben on 13-9-27.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollisionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *collisionView;
@property (strong, nonatomic) UIDynamicAnimator* animator;
@end
