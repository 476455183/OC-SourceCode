//
//  RMPerson+Test.h
//  Category添加属性
//
//  Created by Mr_Zhang on 2018/9/30.
//  Copyright © 2018年 RM Zhang. All rights reserved.
//

#import "RMPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface RMPerson (Test)
//{
//    int _weight;
//}
@property (nonatomic, assign) int weight;
@property (nonatomic, strong) NSString *name;
@end

NS_ASSUME_NONNULL_END
