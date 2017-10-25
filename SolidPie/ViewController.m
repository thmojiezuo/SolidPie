//
//  ViewController.m
//  SolidPie
//
//  Created by tenghu on 2017/10/25.
//  Copyright © 2017年 tenghu. All rights reserved.
//

#import "ViewController.h"
#import "SolidPie.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define RGB(r,g,b)[UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1]

@interface ViewController ()

@property (nonatomic, strong) SolidPie *pie;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict1 = @{@"person":@"60",@"content":@"男 60%\n消费 20%"};
    NSDictionary *dict2 = @{@"person":@"40",@"content":@"女 40%\n消费 80%"};
    NSArray *arr = @[dict1,dict2];
    
    _pie = [[SolidPie alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - 200)/2 , 100, 200, 200)];
    _pie.dataItems = arr;
    _pie.colorItems = @[RGB(39, 110, 162), RGB(207, 67, 89)];
    [self.view addSubview:_pie];
    [_pie stroke];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
