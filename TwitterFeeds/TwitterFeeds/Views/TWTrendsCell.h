//
//  TWTrendsCell.h
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWTrendsCell : UITableViewCell

+(NSString*)reuseIdentifier;
-(void)configureWith:(id)object;

@end

