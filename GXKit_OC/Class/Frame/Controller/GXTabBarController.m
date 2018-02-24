//
//  GXTabBarController.m
//  GXKit_OC
//
//  Created by GuangXiao on 2018/2/24.
//  Copyright © 2018年 guangxiao. All rights reserved.
//

#import "GXTabBarController.h"
#import "GXNavigationController.h"
#import "HomeViewController.h"
#import "MineViewController.h"
@interface GXTabBarController ()

@end

@implementation GXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addChildViewControllers{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    MineViewController *mineVC = [[MineViewController alloc] init];
    [self buildChildViewController:homeVC withTitle:@"首页" withImageName:@"home" selectedImageName:@"home_selected" withTag:0];
    [self buildChildViewController:mineVC withTitle:@"我的" withImageName:@"mine" selectedImageName:@"mine_selected" withTag:0];
    
}

- (void)buildChildViewController:(UIViewController *)childVC withTitle:(NSString *)title withImageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName withTag:(NSInteger)tag{
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image selectedImage:selectedImage];
    tabBarItem.tag = tag;
    childVC.tabBarItem = tabBarItem;
    
    GXNavigationController *naviVC = [[GXNavigationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:naviVC];
}


@end
