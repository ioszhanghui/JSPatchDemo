//
//  ViewController.m
//  JSPatchDemo
//
//  Created by 小飞鸟 on 2017/7/18.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel * label =[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    label.text=@"JSPatch";
    label.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:label];
    
    
    UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(100, 300, 100, 40);
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    
}

#pragma mark 点击事件
-(void)btnClick{
    
    //    UIAlertView * al =[[UIAlertView alloc]initWithTitle:@"更新了" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    //    [al show];
    
}

@end
