//
//  TWTimelineViewController.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TwitterKit/TwitterKit.h>

@interface TWTimelineViewController : TWTRTimelineViewController<UISearchBarDelegate>

@property (nonatomic,strong) UIButton* searchButton;
@property (nonatomic, strong) UIBarButtonItem *searchItem;
@property (nonatomic, strong) UISearchBar *searchBar;

@end
