//
//  VIPMasterViewController.h
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VIPDetailViewController;

@interface VIPMasterViewController : UITableViewController

@property (strong, nonatomic) VIPDetailViewController *detailViewController;

@end
