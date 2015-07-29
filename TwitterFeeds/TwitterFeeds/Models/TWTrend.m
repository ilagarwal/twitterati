//
//  TWProfile.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTrend.h"

@implementation TWTrend

+(instancetype)trendWithDict:(NSDictionary *)responseDict{
    TWTrend* trend = [TWTrend new];
    trend.name = [responseDict objectForKey:@"name"];
    return trend;
}

@end
