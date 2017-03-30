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
    self.title = @"首页";
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

//  跨栈跳转
- (IBAction)spanJump:(UIButton *)sender {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NXRouter sharRouter] popToRootViewControllerAnimated:YES];
        
        UITabBarController *tabrVC = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
        [tabrVC setSelectedIndex:1];
        
        [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXPersonalDesViewController" animated:NO];
        
        //  假如出现push后，tabbar消失变成白色，或者crash了，是因为系统的动画未完成造成的，解决的办法现有延迟等待动画完成的办法
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXDetailViewController" animated:YES];
        });
        
//        [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXDetailViewController" animated:YES];
        

    });
    
    
}



@end
