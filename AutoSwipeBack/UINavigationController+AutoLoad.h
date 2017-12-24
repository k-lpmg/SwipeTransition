//
//  UINavigationController+AutoLoad.h
//  AutoSwipeBack
//
//  Created by Tatsuya Tanaka on 20171224.
//  Copyright © 2017年 tattn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BackSwipeController;

@interface UINavigationController (AutoLoad)
@property(nonatomic) BackSwipeController* swipeBack;
@end