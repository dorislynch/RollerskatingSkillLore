//
//  RNRollerskatingPractice.h
//  RNRollerskatingSkillLore
//
//  Created by Charmee on 9/13/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNRollerskatingPractice : UIResponder

+ (instancetype)rollerskatingPractice_shared;
- (BOOL)rollerskatingPractice_tryThisWay;
- (UIInterfaceOrientationMask)rollerskatingPractice_getOrientation;
- (UIViewController *)rollerskatingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
