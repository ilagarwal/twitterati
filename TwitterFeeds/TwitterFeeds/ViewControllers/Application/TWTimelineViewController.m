//
//  TWTimelineViewController.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTimelineViewController.h"
#import "TWTimelineViewController+SearchBar.h"
#import "TWAuthorization.h"

@interface TWTimelineViewController ()

@end

@implementation TWTimelineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TWTRAPIClient *APIClient = [[Twitter sharedInstance] APIClient];
    TWTRUserTimelineDataSource *userTimelineDataSource = [[TWTRUserTimelineDataSource alloc] initWithScreenName:[[TWAuthorization sharedAuthorization] username] APIClient:APIClient];
    self.dataSource = userTimelineDataSource;
    
    [self setUpSearchBar];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
