//
//  RealmManager.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "RealmManager.h"
#import "Category.h"
#import "Events.h"

#define CATEGORY_NAME_KEY @"CATEGORY_NAME_KEY"
#define CATEGORY_IMAGE_NAME_KEY @"CATEGORY_IMAGE_NAME_KEY"

@implementation RealmManager


+(RLMResults*)getAllCategories{
    if ([self needsToInsertCategories]) {
        [self createDefaultCategories];
    }
    return [Category allObjects];
}

+(BOOL)needsToInsertCategories{
    RLMResults<Category *> *categories = [Category allObjects]; // retrieves all Categories from the default Realm
    if (categories.count==0) {
        return true;
    }
    return false;
}


+(NSArray*)createCategoriesDictionary{
    return [[NSArray alloc] initWithObjects:
            @{CATEGORY_NAME_KEY:@"Hoteles", CATEGORY_IMAGE_NAME_KEY:@"hotel"},
            @{CATEGORY_NAME_KEY:@"Restaurantes", CATEGORY_IMAGE_NAME_KEY:@"restaurante"},
            nil];
}

+(void)createDefaultCategories{
    NSArray *categoryArray = [self createCategoriesDictionary];
    for (NSDictionary *categoryDictionary in categoryArray) {
        Category *category = [Category new];
        category.imageName = [categoryDictionary valueForKey:CATEGORY_IMAGE_NAME_KEY];
        category.categoryTitle = [categoryDictionary valueForKey:CATEGORY_NAME_KEY];
        [self insertObjectInDB:category];
    }
}



+(void)insertObjectInDB:(RLMObject*)realmObject{
    RLMRealm *realm = [RLMRealm defaultRealm];
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}


+(Category*)getEventsWithName:(NSString*)categoryName{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.categoryTitle = %@",categoryName];
    RLMResults<Category *> *categories = [Category objectsWithPredicate:predicate];
    if (categories.count>0) {
        return categories.firstObject;
    }
    return nil;
}

+(RLMArray*)getEventsWithCategoryName:(NSString*)categoryName{
    Category *category = [self getEventsWithName:categoryName];
    return category.events;
}

+(void)createEventsWithCategoryName:(NSString*)categoryName eventsTitle:(NSString*)eventsTitle eventsDescription:(NSString*)eventsDescription eventsDirection:(NSString*)eventsDirection eventsDate:(NSString*)eventsDate{
    
    Category *categorySelected = [self getEventsWithName:categoryName];
    Events *events = [Events new];
    events.eventsDate = eventsDate;
    events.eventsTitle = eventsTitle;
    events.eventsDescription = eventsDescription;
    events.eventsDirection = eventsDirection;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:events];
    [categorySelected.events addObject:events];
    [realm commitWriteTransaction];
}


@end
