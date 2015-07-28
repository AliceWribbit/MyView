//
//  DetailViewController.m
//  MyView
//
//  Created by lzq on 15/7/24.
//  Copyright (c) 2015年 lzq. All rights reserved.
//

#import "EditViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"

@interface DetailViewController ()
@end

@implementation DetailViewController{
    
    // 定义应用程序委托对象
    AppDelegate* _appDelegate;
    // 定义正在编辑的表格行的行号
    NSUInteger _rowNo;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _appDelegate = [UIApplication sharedApplication].delegate;
    // 获取正在编辑的表格行的行号
    _rowNo = self.editingIndexPath.row;
    // 对nameField和detailField的text赋值
    self.nameField.text =_appDelegate.books[_rowNo];
    
    //_appDelegate.books[_rowNo];
    self.detailField.text = _appDelegate.details[_rowNo];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tapped:(id)sender {
    // 获取Storyboard文件中ID为list的视图控制器
    EditViewController *listController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"list"];
    // 控制程序窗口显示listController控制器
    _appDelegate.window.rootViewController = listController;
}

- (IBAction)finished:(id)sender {
    // 让sender放弃作为第一个响应者
    //[sender resignFirstResponder];
}
@end
