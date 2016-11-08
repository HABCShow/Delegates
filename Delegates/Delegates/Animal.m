//
//  Animal.m
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(void)run{
    
    NSLog(@"%@正在跑",self.name);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self.delegate respondsToSelector:@selector(eat)]) {
            [self.delegate eat];
        }
    });
   
    
    
}



@end
