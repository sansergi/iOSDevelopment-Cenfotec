//
//  UITableView+RegisterCustomCell.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "UITableView+RegisterCustomCell.h"

@implementation UITableView (RegisterCustomCell)


-(void)registerCellWithIdentifier:(NSString*)identifier{
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [self registerNib:nib forCellReuseIdentifier:identifier];
}

@end
