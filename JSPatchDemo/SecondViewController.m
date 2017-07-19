//
//  SecondViewController.m
//  JSPatchDemo
//
//  Created by 小飞鸟 on 2017/7/19.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    
    ViewController * VC =[[ViewController alloc]init];
    [self presentViewController:VC animated:YES completion:nil];

}
@end
