//
//  OneViewController.m
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//

#import "OneViewController.h"
#import "Person.h"

@interface OneViewController ()<PersonDelegate>

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)doSomething{
    
    NSLog(@"我是多播One");
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
