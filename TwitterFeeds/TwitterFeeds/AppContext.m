//
//  AppContext.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "AppContext.h"

@implementation AppContext

+(AppContext*)sharedAppContext {
    static AppContext *sharedAppContext = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedAppContext = [[self alloc] init];
    });
    return sharedAppContext;
}


@end
