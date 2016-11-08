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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self delegatesDemo];

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
