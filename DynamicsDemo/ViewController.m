//
//  ViewController.m
//  DynamicsDemo
//
//  Created by Jaben on 13-9-27.
//  Copyright (c) 2013年 Jaben. All rights reserved.
//

#import "ViewController.h"
#import "GravityViewController.h"
#import "CollisionViewController.h"
#import "PushViewController.h"
@interface ViewController ()

@end

@implementation ViewController

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (IBAction)gravityButtonAction:(id)sender {
    GravityViewController *gravityController = [[GravityViewController alloc] initWithNibName:@"GravityViewController" bundle:nil];
    [gravityController setTitle:@"Gravity"];
    [self.navigationController pushViewController:gravityController animated:YES];
}

- (IBAction)collisionButtonAction:(id)sender {
    CollisionViewController *collisionController = [[CollisionViewController alloc] initWithNibName:@"CollisionViewController" bundle:nil];
    [collisionController setTitle:@"Collision"];
    [self.navigationController pushViewController:collisionController animated:YES];
}

- (IBAction)pushButtonAction:(id)sender {
    PushViewController *pushController = [[PushViewController alloc] initWithNibName:@"PushViewController" bundle:nil];
    [pushController setModeIndex:0];
    [pushController setTitle:@"Push"];
    [self.navigationController pushViewController:pushController animated:YES];
}

- (IBAction)snapButtonAction:(id)sender {
    PushViewController *pushController = [[PushViewController alloc] initWithNibName:@"PushViewController" bundle:nil];
    [pushController setModeIndex:1];
    [pushController setTitle:@"Snap"];
    [self.navigationController pushViewController:pushController animated:YES];
}

- (IBAction)attachmentAction:(id)sender {
    PushViewController *pushController = [[PushViewController alloc] initWithNibName:@"PushViewController" bundle:nil];
    [pushController setModeIndex:2];
    [pushController setTitle:@"Attachment"];
    [self.navigationController pushViewController:pushController animated:YES];
}
@end
