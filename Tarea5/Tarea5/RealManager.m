//
//  RealManager.m
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//


#import "RealManager.h"
#import "Dog.h"

#define DOG_NAME_KEY @"DOG_NAME_KEY"
#define DOG_COLOR_NAME_KEY @"DOG_COLOR_NAME_KEY"
#define DOG_IMAGE_NAME_KEY @"DOG_IMAGE_NAME_KEY"

@implementation RealmManager


+(RLMResults*)getAllDogs{
    if ([self needsToInsertDogs]) {
        [self createDefaultDogs];
    }
    return [Dog allObjects];
}

+(BOOL)needsToInsertDogs{
    RLMResults<Dog *> *dogs = [Dog allObjects];
    if (dogs.count==0) {
        return true;
    }
    return false;
}


+(NSArray*)createDogsDictionary{
    return [[NSArray alloc] initWithObjects:
            @{DOG_NAME_KEY:@"Fifo", DOG_COLOR_NAME_KEY:@"Cafe", DOG_IMAGE_NAME_KEY:@"dog1"},
            @{DOG_NAME_KEY:@"Monty", DOG_COLOR_NAME_KEY:@"Negro", DOG_IMAGE_NAME_KEY:@"dog2"},
            @{DOG_NAME_KEY:@"Sam", DOG_COLOR_NAME_KEY:@"Blanco", DOG_IMAGE_NAME_KEY:@"dog3"},
            @{DOG_NAME_KEY:@"Lulu", DOG_COLOR_NAME_KEY:@"Cafe", DOG_IMAGE_NAME_KEY:@"dog4"},
            @{DOG_NAME_KEY:@"Lucas", DOG_COLOR_NAME_KEY:@"Beige", DOG_IMAGE_NAME_KEY:@"dog5"}, nil];
}

+(void)createDefaultDogs{
    NSArray *dogArray = [self createDogsDictionary];
    for (NSDictionary *dogDictionary in dogArray) {
        Dog *dog = [Dog new];
        dog.imageDog = [dogDictionary valueForKey:DOG_IMAGE_NAME_KEY];
        dog.name = [dogDictionary valueForKey:DOG_NAME_KEY];
        dog.color = [dogDictionary valueForKey:DOG_COLOR_NAME_KEY];
        [self insertObjectInDB:dog];
    }
}



+(void)insertObjectInDB:(RLMObject*)realmObject{
    RLMRealm *realm = [RLMRealm defaultRealm];
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}



+(void)createDog:(NSString *)name color:(NSString *)color imageDog:(NSString *)imageDog{
   // Dog *dogSelected = [self getCategoryWithName:categoryName];
    Dog *dogs = [Dog new];
    dogs.name = name;
    dogs.color = color;
    dogs.imageDog = imageDog;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:dogs];
    [realm commitWriteTransaction];
}


@end
