//
//  navigationViewController.m
//  UIKitDemo
//
//  Created by csfeng on 16/8/2.
//  Copyright © 2016年 fcs. All rights reserved.
//

#import "navigationViewController.h"

@interface navigationViewController() <UITableViewDataSource>
@property (nonatomic,strong) NSMutableArray *dataList;
@end

@implementation navigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ios UI界面元素展示";
   
    // Do any additional setup after loading the view.
}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

-(NSMutableArray *)dataList {
    NSLog(@"懒加载dataList");
    if (_dataList == nil){
        _dataList = [NSMutableArray array];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
        [_dataList addObject:@"标签、按钮、文本框、文本域"];
//        [_dataList addObject:@"标签、按钮、文本框、文本域"];
//        [_dataList addObject:@"标签、按钮、文本框、文本域"];
//        [_dataList addObject:@"标签、按钮、文本框、文本域"];
//        [_dataList addObject:@"标签、按钮、文本框、文本域"];
//        [_dataList addObject:@"标签、按钮、文本框、文本域"];
    }
    return _dataList;
}

//数据源方法实现
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
 
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    NSInteger row = [indexPath row];
    cell.textLabel.text = [self.dataList objectAtIndex:row];
    

    return cell;
}

////选择表视图行时触发
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if([segue.identifier isEqualToString:@"ShowSelectedProvince"]){
//        navigationViewController *viewController =segue.destinationViewController;
//        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
//        NSString *selectName = [self.dataList objectAtIndex:selectedIndex];
//        viewController.dataList = [self.dataList objectForKey:selectName];
//        viewController.title = selectName;
//    }
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
