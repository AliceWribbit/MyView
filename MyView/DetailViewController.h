//
//  DetailViewController.h
//  MyView
//
//  Created by lzq on 15/7/24.
//  Copyright (c) 2015年 lzq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) NSIndexPath*	editingIndexPath;
- (IBAction)tapped:(id)sender;
- (IBAction)finished:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextView *detailField;

@end
