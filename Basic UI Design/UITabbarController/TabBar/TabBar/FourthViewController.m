//
//  FourthViewController.m
//  TabBar
//
//  Created by wtndcs on 16/8/17.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *fourthNormalImage =  [[UIImage imageNamed:@"tab_cart"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *fourthSelectedImage =  [[UIImage imageNamed:@"tab_cart_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"购物车" image:fourthNormalImage selectedImage:fourthSelectedImage];
    
    self.tabBarItem.titlePositionAdjustment = UIOffsetMake(-2, -2);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
