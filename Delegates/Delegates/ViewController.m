//
//  ViewController.m
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "OneViewController.h"
#import "TwoViewController.h"

#import "Animal.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 多播代理
//    [self delegatesDemo];
//    隐式代理  不用再遵守协议了
    [self delegateDemo];

}

-(void)delegateDemo{
    
    Animal *ani = [[Animal alloc]init];
    ani.name = @"小白";
    ani.delegate = self;
    [ani run];
    
}

-(void)eat{
    
    NSLog(@"跑完了，准备吃饭");
}

-(void)delegatesDemo{
    
    OneViewController *oneVC = [[OneViewController alloc]init];
    TwoViewController *twoVc = [[TwoViewController alloc]init];
    
    Person *p = [[Person alloc]init];
    
    [p addDelegate:oneVC];
    [p addDelegate:twoVc];
    
    [p walk];
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
