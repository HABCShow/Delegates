//
//  Person.m
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//

#import "Person.h"

@interface Person()

@property(nonatomic, strong)NSMutableArray *delegates;

@end

@implementation Person

-(void)addDelegate:(id)delegate{
    
    [self.delegates addObject:delegate];
    
    
}
-(void)walk{
    
    for (id delegate in self.delegates) {
        
        [(id)delegate doSomething];
        
    }
    
}


-(NSMutableArray *)delegates{
    
    if (_delegates == nil) {
        _delegates = [NSMutableArray array];
        
    }
    return _delegates;
    
}


@end
