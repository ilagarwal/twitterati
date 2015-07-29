//
//  NavigationManager.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIkit/UIkit.h>

@interface NavigationManager : NSObject

@property (nonatomic, strong) UIWindow * window;

-(void)showRoot;
-(void)pushNextVC:(UIViewController*)vc;

@end
