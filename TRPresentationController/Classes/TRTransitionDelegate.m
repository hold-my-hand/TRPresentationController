/*!
 *   TRTransitionDelegate.m
 *   Pods
 *
 *   Created by 姜政 on 2018/1/30
 *   
 */

#import "TRTransitionDelegate.h"
#import "TRPresentationController.h"

@implementation TRTransitionDelegate
static id _instace = nil;
+ (id)allocWithZone:(struct _NSZone *)zone
{
    if (_instace == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instace = [super allocWithZone:zone];
        });
    } 
    return _instace;
}

- (id)init
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instace = [super init];
    });
    return _instace;
}

+ (instancetype)sharedTransition
{
    return [[self alloc] init];
}
+ (id)copyWithZone:(struct _NSZone *)zone
{
    return _instace;
}

+ (id)mutableCopyWithZone:(struct _NSZone *)zone
{
    return _instace;
}
#pragma mark - UIViewControllerTransitioningDelegate
//设置继承自UIPresentationController 的自定义类的属性
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source{
    
    return [[TRPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    
}

//控制器创建执行的动画（返回一个实现UIViewControllerAnimatedTransitioning协议的类）
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    //创建实现UIViewControllerAnimatedTransitioning协议的类（命名为AnimatedTransitioning）
    TRAnimatedTransitioning *anim = [[TRAnimatedTransitioning alloc] init];
    anim.animateType = self.animateType;
    //将其状态改为出现
    anim.presented = YES;
    return anim;
}

//控制器销毁执行的动画（返回一个实现UIViewControllerAnimatedTransitioning协议的类）
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    
    ////创建实现UIViewControllerAnimatedTransitioning协议的类（命名为AnimatedTransitioning）
    TRAnimatedTransitioning *anim = [[TRAnimatedTransitioning alloc] init];
    anim.animateType = self.animateType;
    //将其状态改为出现
    anim.presented = NO;
    return anim;
}
@end
