//
//  TWTimelineViewController.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTimelineViewController.h"
#import "TWTimelineViewController+SearchBar.h"
#import "TWTimelineViewController+NewTweet.h"
#import "TWTimelineViewController+Trends.h"
#import "TWAuthorization.h"
#import "AppContext.h"

#define MAX_TWEETS 500

@interface TWTimelineViewController ()

@end

@implementation TWTimelineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TWTRAPIClient *APIClient = [[Twitter sharedInstance] APIClient];
    TWTRUserTimelineDataSource *userTimelineDataSource = [[TWTRUserTimelineDataSource alloc] initWithScreenName:[TWTAUTH username] userID:[TWTAUTH userid] APIClient:APIClient maxTweetsPerRequest:MAX_TWEETS includeReplies:YES includeRetweets:YES];
    
    self.dataSource = userTimelineDataSource;
    [self setUpSearchBar];
    [self setUpNewTweetButton];
    [self setUpTrendsButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
