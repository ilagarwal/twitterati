//
//  TWTrendsCell.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTrendsCell.h"

@implementation TWTrendsCell

- (void)awakeFromNib {
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.textLabel.font = [UIFont systemFontOfSize:20];
        self.textLabel.textColor = [UIColor whiteColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(NSString*)reuseIdentifier{
    return @"trendsCell";
}

-(void)configureWith:(id)object{
    self.textLabel.text = [object valueForKey:@"name"];
}

@end
