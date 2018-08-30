//
//  main.m
//  OC对象的本质
//
//  Created by Mr_Zhang on 2018/7/4.
//  Copyright © 2018年 RM Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSObject *obj = [[NSObject alloc] init];
        // 获取NSObject实例对象的成员变量所占用的大小
        NSLog(@"%zd",class_getInstanceSize([NSObject class])); // 8个字节
        // 获取obj指针所指向的内存大小
        NSLog(@"%zd",malloc_size((__bridge const void *)obj)); // 16个字节
        
        // 什么平台的代码
        // 不同平台支持的代码肯定是不一样
        // Windows、mac、iOS
        // 模拟器(i386)、32bit(armv7)、64bit（arm64）
    }
    return 0;
}
