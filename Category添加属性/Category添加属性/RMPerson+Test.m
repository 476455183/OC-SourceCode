//
//  RMPerson+Test.m
//  Category添加属性
//
//  Created by Mr_Zhang on 2018/9/30.
//  Copyright © 2018年 RM Zhang. All rights reserved.
//

#import "RMPerson+Test.h"
#import <objc/runtime.h>

//NSMutableDictionary *weight_;
//int weight_;

@implementation RMPerson (Test)

// 1.定义一个int weight_替代成员变量_weight
//- (void)setWeight:(int)weight {
//    weight_ = weight;
//}
//
//- (int)weight {
//    return weight_;
//}

// 在load方法里创建weight_对象，因为load只加载一次
//+ (void)load {
//    weight_ = [NSMutableDictionary dictionary];
//}
//

// 2.定义NSMutableDictionary字典_weight替代成员变量_weight
//- (void)setWeight:(int)weight {
//    NSString *key = [NSString stringWithFormat:@"%p",self];
//    weight_[key] = @(weight);
//}
//
//- (int)weight {
//    NSString *key = [NSString stringWithFormat:@"%p",self];
//    return [weight_[key] intValue];
//}

// 3.关联对象
- (void)setName:(NSString *)name {
//    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
//    return objc_getAssociatedObject(self, @"name");
    //_cmd = @selector(name);
    return objc_getAssociatedObject(self, _cmd);
}

const void *RMWeightKey = &RMWeightKey;
- (void)setWeight:(int)weight {
    objc_setAssociatedObject(self, RMWeightKey, @(weight), OBJC_ASSOCIATION_ASSIGN);
}

- (int)weight {
    return [objc_getAssociatedObject(self, RMWeightKey) intValue];
}

@end
