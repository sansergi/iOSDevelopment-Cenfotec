//
//  Dog.m
//  CustomTableViewExample
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "Dog.h"

@interface Dog()
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *color;

@end

@implementation Dog

-(id)initWithName:(NSString*)name color:(NSString*)color{
    if(self=[super init]){
        _name= name;
        _color = color;
    }
    return self;
}

@end
