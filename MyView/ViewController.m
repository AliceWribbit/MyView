//
//  ViewController.m
//  MyView
//
//  Created by lzq on 15/7/23.
//  Copyright (c) 2015年 lzq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    
    
  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)b:(id)sender {
    self.qqqq.text = @"1";
}

- (IBAction)p1:(id)sender {
    self.qqqq.text = @"2";
}
@end
