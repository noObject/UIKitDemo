//
//  ViewController.m
//  UIKitDemo
//
//  Created by csfeng on 16/8/1.
//  Copyright © 2016年 fcs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (nonatomic) BOOL isTrue ;
@property (weak, nonatomic) IBOutlet UILabel *show;
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UITextView *showView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _show.layer.borderColor = [[UIColor grayColor]CGColor];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//BOOL _isTrue = YES;
- (IBAction)click:(id)sender {
//    if(_isTrue){
//        _show.text = @"1234567";
//        _isTrue=NO;
//    }else{
//        _show.text = @"7654321";
//        _isTrue = YES;
//    }
    NSLog(@"%@",_show.text);
    _show.text = [_show.text stringByAppendingString: _input.text];
}

- (IBAction)submit:(id)sender {
    _showView.text = [_showView.text stringByAppendingString:_show.text];
}



@end
