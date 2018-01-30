/*!
 *   TRTransitionDelegate.h
 *   Pods
 *
 *   Created by 姜政 on 2018/1/30
 *   
 */

#import <Foundation/Foundation.h>
#import "TRAnimatedTransitioning.h"
#import <UIKit/UIKit.h>

@interface TRTransitionDelegate : NSObject <UIViewControllerTransitioningDelegate>

+ (instancetype)sharedTransition;

@property (nonatomic, assign) AnimateType animateType;
@end
