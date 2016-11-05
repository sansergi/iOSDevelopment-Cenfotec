//
//  Dog.h
//  CustomTableViewExample
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
@property(readonly) NSString *name;
@property(readonly) NSString *color;
-(id)initWithName:(NSString*)name color:(NSString*)color;
-(void)setUpCellwithDog:(Dog *)dog;
@end
