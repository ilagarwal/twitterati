//
//  TWAuthorization.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TWTAUTH [TWAuthorization sharedAuthorization]


@interface TWAuthorization : NSObject

+(TWAuthorization*)sharedAuthorization;

-(BOOL)loggedIn;
-(NSString*)username;
-(NSString*)userid;

@end
