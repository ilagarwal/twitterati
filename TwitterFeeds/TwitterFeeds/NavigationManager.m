//
//  NavigationManager.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "NavigationManager.h"
#import "TWLoginViewController.h"
#import "TWTimelineViewController.h"
#import "TWAuthorization.h"
#import "TWNavigationController.h"

@interface NavigationManager()

@property (nonatomic,strong) TWNavigationController* navigationController;

@end

@implementation NavigationManager


-(void)showRoot{
    if (![[TWAuthorization sharedAuthorization] loggedIn]){
        TWLoginViewController* loginVC = [TWLoginViewController new];
        [self replaceInitialControllerWithVC:loginVC];
    }
    else{
        if (!self.navigationController){
            TWTimelineViewController* timelineVC = [TWTimelineViewController new];
            self.navigationController = [TWNavigationController new];
            [self.navigationController addChildViewController:timelineVC];
            
        }
        [self replaceInitialControllerWithVC:self.navigationController];
    }
}


-(void)replaceInitialControllerWithVC:(UIViewController*)ctrl {
    self.window.rootViewController = ctrl;
    [self.window makeKeyAndVisible];
}

-(void)pushNextVC:(UIViewController*)vc{
    [self.navigationController pushViewController:vc animated:YES];
}

@end
