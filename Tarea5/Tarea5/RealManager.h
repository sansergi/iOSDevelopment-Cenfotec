//
//  RealManager.h
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface RealmManager : NSObject
+(RLMResults*)getAllDogs;
+(void)createDog:(NSString*)name color:(NSString*)color imageDog:(NSString*)imageDog;
@end
