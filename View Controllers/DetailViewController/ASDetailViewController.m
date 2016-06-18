//
//  ASDetailViewController.m
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/23.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "ASDetailViewController.h"
#import "DetailView.h"
#import "UIColor+expanded.h"

@interface ASDetailViewController ()

@end

@implementation ASDetailViewController

- (instancetype)initWithNode:(ASDisplayNode *)node {
    if (self = [super initWithNode:node]) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title = @"AsyncDisplayKit";
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHexString:@"0x185688"]];
    NSDictionary *barTextAttributes = @{ NSFontAttributeName: [UIFont boldSystemFontOfSize:19],
                                         NSForegroundColorAttributeName: [UIColor whiteColor]  };
    [self.navigationController.navigationBar setTitleTextAttributes:barTextAttributes];
    
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
