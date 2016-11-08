//
//  Animal.h
//  Delegates
//
//  Created by HYY on 16/11/8.
//  Copyright © 2016年 abc_show. All rights reserved.
//


//隐式代理
#import <Foundation/Foundation.h>

@interface NSObject(myCategory)

-(void)eat;


@end


@interface Animal : NSObject

@property(nonatomic, copy)NSString *name;
@property(nonatomic, weak)id delegate;
-(void)run;


@end
