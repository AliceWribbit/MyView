//
//  ViewController.h
//  MyView
//
//  Created by lzq on 15/7/23.
//  Copyright (c) 2015年 lzq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>


@property (strong, nonatomic) IBOutlet UILabel *qqqq;

@property (strong, nonatomic) IBOutlet UIImageView *imagetap;

- (IBAction)b:(id)sender;

- (IBAction)p1:(id)sender;

@end

