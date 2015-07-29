//
//  TWTimelineViewController+NewTweet.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 29/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTimelineViewController+NewTweet.h"

@implementation TWTimelineViewController (NewTweet)

-(void)setUpNewTweetButton{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@" + " style:UIBarButtonItemStyleDone target:self action:@selector(newTweetPressed:)];
}

-(IBAction)newTweetPressed:(id)sender{
    TWTRComposer *composer = [[TWTRComposer alloc] init];
    // Called from a UIViewController
    [composer showFromViewController:self completion:^(TWTRComposerResult result) {
        if (result == TWTRComposerResultCancelled) {
            NSLog(@"Tweet composition cancelled");
        }
        else {
            NSLog(@"Sending Tweet!");
        }
    }];
}

@end
