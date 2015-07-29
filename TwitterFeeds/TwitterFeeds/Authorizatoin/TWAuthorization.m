//
//  TWAuthorization.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWAuthorization.h"
#import <TwitterKit/TwitterKit.h>

@implementation TWAuthorization

+(TWAuthorization*)sharedAuthorization {
    static TWAuthorization *sharedCVRestAuthorization = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCVRestAuthorization = [[self alloc] init];
    });
    return sharedCVRestAuthorization;
}

-(BOOL)loggedIn{
    if ([Twitter sharedInstance].session){
        return YES;
    }
    else
        return NO;
}

-(NSString*)username{
    return [Twitter sharedInstance].session.userName;
}

-(NSString*)userid{
    return [Twitter sharedInstance].session.userID;
}

@end
