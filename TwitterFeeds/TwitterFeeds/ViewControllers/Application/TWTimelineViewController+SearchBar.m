//
//  TWTimelineViewController+SearchBar.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 29/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTimelineViewController+SearchBar.h"

@implementation TWTimelineViewController (SearchBar)

-(void)setUpSearchBar{
    self.searchBar = [[UISearchBar alloc] init];
    self.searchBar.showsCancelButton = YES;
    self.searchBar.delegate = self;
    [self setUpSearchButton];
    [self showSearchButton];
}

-(void)setUpSearchButton{
    self.searchButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.searchButton.frame = CGRectMake(0, 0, 200, 30);
    [self.searchButton setTitle:@"Search" forState:UIControlStateNormal];
    [self.searchButton addTarget:self action:@selector(searchButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.searchButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
}
                               

-(void)showSearchButton{
    self.navigationItem.titleView = self.searchButton;
}

-(void)showSearchBar{
    self.navigationItem.titleView = self.searchBar;
}

- (void)searchButtonTapped:(id)sender {
    [self showSearchBar];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self showSearchButton];
}


@end
