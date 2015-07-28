//
//  EditViewController.h
//  MyView
//
//  Created by lzq on 15/7/23.
//  Copyright (c) 2015年 lzq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController<UITableViewDataSource
, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *qq;
@property (strong, nonatomic) IBOutlet UITableView *table;
//@property (strong, nonatomic) NSArray* books;
//@property (strong, nonatomic) NSArray* details;
@end
