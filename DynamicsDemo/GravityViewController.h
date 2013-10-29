//
//  GravityViewController.h
//  DynamicsDemo
//
//  Created by Jaben on 13-9-27.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GravityViewController : UIViewController

@property (strong, nonatomic) UIDynamicAnimator* animator;
@property (weak, nonatomic) IBOutlet UIView *gravityView;
@end
