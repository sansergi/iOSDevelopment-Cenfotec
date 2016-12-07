//
//  TableViewCell.h
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;
@interface TableViewCell : UITableViewCell
-(void)configureCellWithDogs:(Dog*)dogObject;
@end
