//
//  AddEventsTableViewController.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"

@interface AddEventsTableViewController : UITableViewController <MapViewControllerDelegate>

@property(nonatomic,strong) NSString *categoryName;

@end
