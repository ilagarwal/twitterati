//
//  AppContext.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NavigationManager.h"

static NSString * const TW_REFRESH_NOTIFICATION = @"refresh";

@interface AppContext : NSObject

+(AppContext*)sharedAppContext;

@property (nonatomic, strong) NavigationManager * navigationManager;

@end
