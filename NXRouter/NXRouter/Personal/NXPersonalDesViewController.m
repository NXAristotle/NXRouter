//
//  NXPersonalDesViewController.m
//  NXRouter
//
//  Created by linyibin on 2017/3/30.
//  Copyright © 2017年 NXAristotle. All rights reserved.
//

#import "NXPersonalDesViewController.h"

@interface NXPersonalDesViewController ()

@end

@implementation NXPersonalDesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"personal的目标VC （第二级的VC）";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jumpToDetailVC:(UIButton *)sender {
    [[NXRouter sharRouter] pushURLString:@"app://NXAristotle/NXDetailViewController" animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
