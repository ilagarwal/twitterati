//
//  TWLoginViewController.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWLoginViewController.h"
#import <TwitterKit/TwitterKit.h>
#import "UIColor+colors.h"
#import "AppContext.h"
#import "TWAuthorization.h"




@interface TWLoginViewController ()

@end

@implementation TWLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TWTRLogInButton *logInButton = [TWTRLogInButton buttonWithLogInCompletion:^(TWTRSession *session, NSError *error) {
        if (session) {
            [[AppContext sharedAppContext].navigationManager showRoot];
        } else {
            // Show pop up could not login
            NSLog(@"error: %@", [error localizedDescription]);
        }
    }];
    
    CGFloat width = 0.5* [UIScreen mainScreen].bounds.size.width;
    logInButton.frame = CGRectMake(width/2, self.view.center.y, width,logInButton.frame.size.height);
    [self.view addSubview:logInButton];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
