//
//  HomeViewController.m
//  GXKit_OC
//
//  Created by GuangXiao on 2018/2/24.
//  Copyright © 2018年 guangxiao. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeMultiThreadingViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    HomeMultiThreadingViewController * vc = [[HomeMultiThreadingViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
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
