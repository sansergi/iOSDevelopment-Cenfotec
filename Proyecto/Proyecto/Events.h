//
//  Events.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Category;

@interface Events : RLMObject
@property NSString *eventsTitle;
@property NSString *eventsDescription;
@property NSString *eventsDirection;
@property NSString *eventsDate;
@property Category *category;
@end
RLM_ARRAY_TYPE(Events) 
