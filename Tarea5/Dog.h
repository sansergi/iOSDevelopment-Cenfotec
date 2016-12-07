//
//  Dog.h
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>


@interface Dog : RLMObject

@property NSString *name;
@property NSString *imageDog;
@property NSString *color;

@end

RLM_ARRAY_TYPE(Dog)



