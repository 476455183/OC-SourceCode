//
//  ViewController.m
//  Category添加属性
//
//  Created by Mr_Zhang on 2018/9/30.
//  Copyright © 2018年 RM Zhang. All rights reserved.
//

#import "ViewController.h"
#import "RMPerson+Test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RMPerson *person = [[RMPerson alloc] init];
    person.age = 10;
    person.name = @"Rose";
    person.weight = 30;
    
    RMPerson *person2 = [[RMPerson alloc] init];
    person2.age = 20;
    person2.name = @"Jack";
    person2.weight = 40;
    
    NSLog(@"person-----  age : %d name : %@ ,weight : %d", person.age, person.name, person.weight);
    NSLog(@"person2----- age : %d name : %@ ,weight : %d", person2.age, person2.name, person2.weight);
}

@end
