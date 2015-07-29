//
//  TWApi.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 29/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWApi.h"
#import <TwitterKit/TwitterKit.h>

static NSString *trendsEndpoint = @"https://api.twitter.com/1.1/trends/place.json";

@implementation TWApi

-(void)twitterGetRequestForURL:(NSString*)endpoint withParams:(NSDictionary*)params withSuccessBlock:(void(^)(id JSON))successBlock{
    NSError *clientError;
    NSURLRequest *request = [[[Twitter sharedInstance] APIClient] URLRequestWithMethod:@"GET" URL:endpoint parameters:params error:&clientError];
    
    if (request) {
        [[[Twitter sharedInstance] APIClient] sendTwitterRequest:request completion:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
            if (data) {
                // handle the response data e.g.
                NSError *jsonError;
                id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
                if (!jsonError){
                    successBlock(json);
                }
            }
            else {
                NSLog(@"Error: %@", connectionError);
            }
        }];
    }
    else {
        NSLog(@"Error: %@", clientError);
    }
}

-(void)fetchResultsWithCompletionBlock:(void(^)())completionBlock{
    // override in child
}

@end

#import "TWTrend.h"

@implementation TWTrendsApi

-(void)fetchResultsWithCompletionBlock:(void(^)(id))completionBlock{
    NSDictionary *params = @{@"id" : @"1"};
    
    __block NSMutableArray* trends;
    void (^success)(id JSON) = ^(id json){
        NSDictionary* response = [(NSArray*)json firstObject];
        if ([response objectForKey:@"trends"]){
            trends = [NSMutableArray new];
            for (NSDictionary* dic in response[@"trends"]){
                TWTrend* trendObj = [TWTrend trendWithDict:dic];
                [trends addObject:trendObj];
            }
            completionBlock(trends);
        }
    };
    
    [self twitterGetRequestForURL:trendsEndpoint withParams:params withSuccessBlock:success];
}

@end
