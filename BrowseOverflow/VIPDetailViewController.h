//
//  VIPDetailViewController.h
//  BrowseOverflow
//
//  Created by wufulin on 13-8-12.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VIPDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
