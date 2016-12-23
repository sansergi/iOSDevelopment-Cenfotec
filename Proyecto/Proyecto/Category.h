//
//  Category.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Events.h"

@interface Category : RLMObject
@property RLMArray<Events *><Events> *events;
@property NSString *categoryTitle;
@property NSString *imageName;
@end
RLM_ARRAY_TYPE(Category)
