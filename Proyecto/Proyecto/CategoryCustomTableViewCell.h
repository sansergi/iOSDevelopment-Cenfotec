//
//  CategoryCustomTableViewCell.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//
#import <UIKit/UIKit.h>
@class Category;
@interface CategoryCustomTableViewCell : UITableViewCell
-(void)setupCellWithCategoryObject:(Category*)category;
@end
