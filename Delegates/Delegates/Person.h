//
//  Person.h
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//


//多播代理
#import <Foundation/Foundation.h>

@protocol PersonDelegate <NSObject>

-(void)doSomething;

@end

@interface Person : NSObject


-(void)addDelegate:(id)delegate;
-(void)walk;

@end
