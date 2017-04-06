//
//  ViewController.m
//  const_static_extern 这三个关键字的使用
//
//  Created by yaoqi on 17/4/5.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "ViewController.h"

#import "HSConst.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 定义变量
//    int a = 1;
//    
//    // 允许修改值
//    a = 20;
//    // const两种用法
//    // const:修饰基本变量p
//    // 这两种写法是一样的，const只修饰右边的基本变量b
////    const int b = 20; // b:只读变量
//    int const b = 20; // b:只读变量
//    
//    // 不允许修改值
////    b = 1;
//    
//    // const:修饰指针变量*p，带*的变量，就是指针变量.
//    // 定义一个指向int类型的指针变量，指向a的地址
//    int *p = &a;
//    
//    int c = 10;
//    
//    p = &c;
//    
//    // 允许修改p指向的地址，
//    // 允许修改p访问内存空间的值
//    *p = 20;
    
    // const修饰指针变量访问的内存空间，修饰的是右边*p1，
    // 两种方式一样
//    const int *p1; // *p1：常量 p1:变量
//    int const *p1; // *p1：常量 p1:变量
    
    // const修饰指针变量p1
//    int * const p1; // *p1:变量 p1:常量
    
    // 第一个const修饰*p1 第二个const修饰 p1
    // 两种方式一样
//    const int * const p1; // *p1：常量 p1：常量
    
//    int const * const p1;  // *p1：常量 p1：常量

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    int a = 10;
    
    // 需求1:提供一个方法，这个方法的参数是地址，里面只能通过地址读取值,不能通过地址修改值。
    
    // 这时候就需要使用const，约束方法的参数只读.
//    [self test:&a];
    
    // 需求2:提供一个方法，这个方法的参数是地址，里面不能修改参数的地址。
//    [self test1:&a];
    
//    int a = 1;
//    a = 20;
//    const int b = 20;
////    int const c = 22;//2种方法是一样的和上面的
////    b = 1;//报错不允许修改b的值
////    c = 222;//也不允许修改c的值
//    int *p = &a;
//    int c = 10;
//    p = &c;
//    *p = 20;
////    const int *p1;
//    int const *p1;//2种方法修饰的变量一样
    
    
    //和appdelegate里面定义的结合使用
    extern NSString *HSCoder;
    NSLog(@"HSCoder == %@",HSCoder);
    NSLog(@"HSCellMargin = %f",HSCellMargin);
    NSLog(@"HSNotifLoginSuccess = %@",HSNotifLoginSuccess);
    
}


// const放*前面约束参数，表示*a只读
// 只能修改地址a,不能通过a修改访问的内存空间
- (void)test:(const int * )a
{
    //    *a = 20;
}

// const放*后面约束参数，表示a只读
// 不能修改a的地址，只能修改a访问的值
- (void)test1:(int * const)a
{
    int b;
    // 会报错
//    a = &b;
    
    *a = 2;
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
