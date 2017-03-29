//
//  ViewController.m
//  NXRouter
//
//  Created by linyibin on 2017/3/27.
//  Copyright © 2017年 NXAristotle. All rights reserved.
//

#import "ViewController.h"
#import "NXTestW2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"W2目标VC";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jumpToTestVC:(UIButton *)sender {
//    [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXAristotleViewController" animated:YES];
    
    [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXAristotleViewController" params:@{@"name":@"nxaristotle",@"identifier":@"12869"} animated:YES];
}

- (IBAction)jumpToTestVCW2:(UIButton *)sender {
    
    NXTestW2ViewController *W2VC = [[NXTestW2ViewController alloc] init];
    [[NXRouter sharRouter] pushViewController:W2VC animated:YES];
}



@end
