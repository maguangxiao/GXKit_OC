//
//  HomeMultiThreadingViewController.m
//  GXKit_OC
//
//  Created by GuangXiao on 2018/2/24.
//  Copyright © 2018年 guangxiao. All rights reserved.
//

#import "HomeMultiThreadingViewController.h"
#import <pthread.h>
@interface HomeMultiThreadingViewController ()

@end

@implementation HomeMultiThreadingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
}
void *demo(void *param){
    NSLog(@"hello");
    return NULL;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    pthread_t pthreadNum;
    /**
     <#Description#>
     
     @param _Nonnull#> 线程编号的地址 description#>
     @param _Nullable#> 线程的属性 description#>
     @param _Nonnull 线程要执行的函数
     @return 要执行的函数的参数
     */
    int result = pthread_create(&pthreadNum, NULL, demo, NULL);
    
    if (result == 0){
        NSLog(@"成功");
    }else{
        NSLog(@"失败");
    }
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
