//
//  ViewController.m
//  RomateDemo
//
//  Created by tianlei on 16/6/30.
//  Copyright © 2016年 tianlei. All rights reserved.
//

#import "ViewController.h"
#import "RometeView.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RometeView *romate = [RometeView sharedRometeView];
    romate.center = CGPointMake(self.view.bounds.size.width-67, self.view.bounds.size.height-70);
    romate.menuCount = 13;
    
    [self.view addSubview:romate];
    
    
    _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
    _button.center = CGPointMake(self.view.bounds.size.width-67, self.view.bounds.size.height-70);
    _button.backgroundColor = [UIColor yellowColor];
    _button.layer.cornerRadius = 27.5;
    [_button addTarget:self action:@selector(showItems:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_button];
    
    
    
    
}

- (void)showItems:(UIButton *)sender{
    RometeView *romate = [RometeView sharedRometeView];
    [romate show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
