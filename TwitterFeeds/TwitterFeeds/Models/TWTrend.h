//
//  TWProfile.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWTrend : NSObject

@property (nonatomic,strong) NSString* name;
+(instancetype)trendWithDict:(NSDictionary*)responseDict;

@end
