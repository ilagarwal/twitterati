//
//  TWTrendsViewController.m
//  TwitterFeeds
//
//  Created by Agarwal, Ila on 21/07/15.
//  Copyright (c) 2015 Agarwal, Ila. All rights reserved.
//

#import "TWTrendsViewController.h"
#import <TwitterKit/TwitterKit.h>
#import "TWApi.h"
#import "TWTrendsCell.h"

@interface TWTrendsViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray* trends;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation TWTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setHidden:YES];
    // Activity Indicator
    [self.activityIndicator setHidden:NO];
    [self.activityIndicator startAnimating];
    [self.view addSubview:self.activityIndicator];
    self.activityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2,  [UIScreen mainScreen].bounds.size.height/2);
    
    [self registerCell];
    [self populateTrends];
    self.navigationItem.title = @"Trends";
      // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)registerCell{
     [self.tableView registerNib:[UINib nibWithNibName:@"TWTrendsCell" bundle:nil]  forCellReuseIdentifier:[TWTrendsCell reuseIdentifier]];
}

-(void)populateTrends{
    TWApi* trendsAPI = [TWTrendsApi new];
    __weak __typeof(&*self)weakSelf = self;
    
    void(^completion)(id) = ^(id trendsArray){
        [weakSelf.activityIndicator stopAnimating];
        [weakSelf.activityIndicator setHidden:YES];
        weakSelf.trends = (NSArray*)trendsArray;
        if ([[weakSelf trends] count]){
            [weakSelf.tableView setHidden:NO];
        }
        [weakSelf.tableView reloadData];
    };
    
    
    [trendsAPI fetchResultsWithCompletionBlock:completion];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TWTrendsCell* cell = [tableView dequeueReusableCellWithIdentifier:[TWTrendsCell reuseIdentifier] forIndexPath:indexPath];
    
    [cell configureWith:[self.trends objectAtIndex:indexPath.row]];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.trends.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [[UIScreen mainScreen] bounds].size.height / 11.0;
}

-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    return NO;
}

@end
