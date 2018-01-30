/*!
 *   TRAnimatedTransitioning.h
 *   Pods
 *
 *   Created by 姜政 on 2018/1/30
 *
 */

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    AnimateTypePresented,
    AnimateTypeScale,
    AnimateTypePush,
} AnimateType;

@interface TRAnimatedTransitioning : NSObject <UIViewControllerAnimatedTransitioning>

// 用于记录控制器是创建还是销毁
@property (nonatomic, assign) BOOL          presented;
@property (nonatomic, assign) AnimateType   animateType;
@end
