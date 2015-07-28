//
//  EditViewController.m
//  MyView
//
//  Created by lzq on 15/7/23.
//  Copyright (c) 2015年 lzq. All rights reserved.
//  实现公司简介的页面

#import "EditViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"
@interface EditViewController ()
@end

@implementation EditViewController{
    // 定义应用程序委托对象
    AppDelegate* _appDelegate;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 为UITableView控件设置dataSource和delegate
    self.table.dataSource = self;
    self.table.delegate = self;
    _appDelegate = [UIApplication sharedApplication].delegate;
    
    
    /*
    // 创建并初始化NSArray对象
    _books = @[@"公司介绍",
               @"专利证书", @"公司荣誉" , @"企业文化", @"联系我们", @"合作伙伴"];
    // 创建并初始化NSArray对象
    _details = @[@"qazqazqazqazqazqazqazqazqazqazqazqazqazqazqazqaz",
                 @"wsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsxwsx",
                 @"edcedcedcedcedcedcedcededcedcedcedcedcedcedced" ,
                 @"rfvrfvrfvrfvrfvrfvrfvrfvrfvrfvrfvrfvrfvrfv",
                 @"tgbtgbtgbtgbtgbtgbtgbtgbtgbtgbtgbtgbtgbtgb",
                 @"yhnyhnyhnyhnyhnyhnyhnyhnyhnyhnyhnyhnyhnyhn"];
    
    */
    
    // 为UITableView控件设置dataSource,在.h中的协议
    self.table.dataSource = self;
    // 为UITableView控件设置页眉控件
   /* self.table.tableHeaderView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:@"tableheader.png"]];
    // 为UITableView控件设置页脚控件。。。。。图片的锅。。。。
    self.table.tableFooterView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:@"tableheader.png"]];
    *///给table的头尾添加图片。
}
// 该方法的返回值决定各表格行的控件
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 为表格行定义一个静态字符串作为标识符
    static NSString* cellId = @"cellId";  // ①
    // 从可重用表格行的队列中取出一个表格行
    UITableViewCell* cell = [tableView
                             dequeueReusableCellWithIdentifier:cellId];
    // 如果取出的表格行为nil
    if(cell == nil)
    {
        switch(indexPath.row )//%6 ?//k可以用来设置每一行的封面图片！！！
        {
            case 0:
                // 创建一个UITableViewCell对象，使用UITableViewCellStyleSubtitle风格
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
            case 1:
                // 创建一个UITableViewCell对象，使用默认风格
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
            case 2:
                // 创建一个UITableViewCell对象，使用UITableViewCellStyleValue1风格
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
            case 3:
                // 创建一个UITableViewCell对象，使用UITableViewCellStyleValue2风格
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
                
            case 4:
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
            
            case 5:
                cell = [[UITableViewCell alloc]
                        initWithStyle:UITableViewCellStyleSubtitle
                        reuseIdentifier:cellId];
                break;
            case 6:
                break;
        }
    }
    // 将单元格的边框设置为圆角
    cell.layer.cornerRadius = 12;
    cell.layer.masksToBounds = YES;
    // 从NSIndexPath参数中获取当前行的行号
    NSUInteger rowNo = indexPath.row;
    // 取出_books中索引为rowNo的元素作为UITableViewCell的文本标题
    cell.textLabel.text = _appDelegate.books[rowNo];
    // 为UITableViewCell的左端设置图片
    cell.imageView.image = [UIImage imageNamed:@"ic_gray.png"];
    // 为UITableViewCell的左端设置高亮状态时的图片
    
    
    
    //判断触发高亮状态的设定在哪里？？？？？？？？
    
    cell.imageView.highlightedImage = [UIImage imageNamed:
                                       @"ic_highlight.png"];
    // 取出_details中索引为rowNo的元素作为UITableViewCell的详细内容
    cell.detailTextLabel.text = _appDelegate.details[rowNo];
    return cell;
}
// 该方法的返回值决定指定分区内包含多少个表格行
- (NSInteger)tableView:(UITableView*)tableView
	numberOfRowsInSection:(NSInteger)section
{
    // 由于该表格只有一个分区，直接返回_books中集合元素个数代表表格的行数_books.count
    return _appDelegate.books.count;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取Storyboard文件中ID为detail的视图控制器
    DetailViewController* detailController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"detail"];

    detailController.editingIndexPath = indexPath;
    
    // 让应用程序的窗口显示detailViewController
    _appDelegate.window.rootViewController = detailController;
}






@end