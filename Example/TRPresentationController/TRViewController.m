//
//  TRViewController.m
//  TRPresentationController
//
//  Created by 13036101641@163.com on 01/30/2018.
//  Copyright (c) 2018 13036101641@163.com. All rights reserved.
//

#import "TRViewController.h"
#import <TRPresentationController/TRTransitionDelegate.h>
@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)presentAction:(id)sender {
    UIStoryboard   *mainSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainSB instantiateViewControllerWithIdentifier:@"PresentViewController"];
    vc.modalPresentationStyle = UIModalPresentationCustom;// 设置 动画样式
    vc.transitioningDelegate = [TRTransitionDelegate sharedTransition];
    [TRTransitionDelegate sharedTransition].animateType = AnimateTypePush;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
