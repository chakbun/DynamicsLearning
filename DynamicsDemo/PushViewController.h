//
//  PushViewController.h
//  DynamicsDemo
//
//  Created by Jaben on 13-9-28.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushViewController : UIViewController
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UIView *pushView;
@property (assign, nonatomic) NSInteger modeIndex;
@end
