//
//  ViewController.m
//  NXRouter
//
//  Created by linyibin on 2017/3/27.
//  Copyright © 2017年 NXAristotle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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


@end
