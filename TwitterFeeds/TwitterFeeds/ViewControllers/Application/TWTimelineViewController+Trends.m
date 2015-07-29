//
//  TWTimelineViewController+Trends.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 29/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTimelineViewController+Trends.h"
#import "TWTrendsViewController.h"
#import "AppContext.h"

@implementation TWTimelineViewController (Trends)

-(void)setUpTrendsButton{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Trends >" style:UIBarButtonItemStyleDone target:self action:@selector(trendsPressed:)];
}

-(IBAction)trendsPressed:(id)sender{
    TWTrendsViewController* trendsVC = [TWTrendsViewController new];
    [[AppContext sharedAppContext].navigationManager pushNextVC:trendsVC];
}


@end
