//
//  TableViewController.m
//  UIKitDemo
//
//  Created by csfeng on 16/8/3.
//  Copyright © 2016年 fcs. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()
@property(nonatomic,strong) NSMutableArray *dataList;
@end

@implementation TableViewController
-(NSMutableArray *)dataList{
    if(_dataList == nil){
        _dataList = [NSMutableArray array];
        [_dataList addObject:@"Label,button,textfield,textView"];
//        [_dataList addObject:@"123123123"];
//        [_dataList addObject:@"123123123"];
//        [_dataList addObject:@"123123123"];
//        [_dataList addObject:@"123123123"];
//        [_dataList addObject:@"123123123"];
//        [_dataList addObject:@"123123123"];
    }
    return _dataList;
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"返回数组行数");
    return self.dataList.count;
}

#pragma mark返回每行的单元格
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"生成单元格(行%li)",(long)indexPath.row);
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    NSString *numberStr = self.dataList[indexPath.row];
    cell.textLabel.text = numberStr;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *viewCtl = [board instantiateViewControllerWithIdentifier:@"LabelShow"];
   
    [self.navigationController pushViewController:viewCtl animated:YES];
}

@end
