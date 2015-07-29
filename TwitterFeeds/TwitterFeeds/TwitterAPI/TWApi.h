//
//  TWApi.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 29/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWApi : NSObject

-(void)twitterGetRequestForURL:(NSString*)endpoint withParams:(NSDictionary*)params withSuccessBlock:(void(^)(id JSON))successBlock;
-(void)fetchResultsWithCompletionBlock:(void(^)(id))completionBlock;


@end


@interface TWTrendsApi : TWApi


@end
