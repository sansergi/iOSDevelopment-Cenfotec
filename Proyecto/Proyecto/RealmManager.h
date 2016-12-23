//
//  RealManager.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface RealmManager : NSObject
+(RLMResults*)getAllCategories;
+(RLMArray*)getEventsWithCategoryName:(NSString*)categoryName;
+(void)createEventsWithCategoryName:(NSString*)categoryName eventsTitle:(NSString*)eventsTitle eventsDescription:(NSString*)eventsDescription eventsDirection:(NSString*)eventsDirection eventsDate:(NSString*)eventsDate;
@end
