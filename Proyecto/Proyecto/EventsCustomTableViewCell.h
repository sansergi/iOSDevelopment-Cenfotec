//
//  EventsCustomTableViewCell.h
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Events;
@interface EventsCustomTableViewCell : UITableViewCell
-(void)configureCellWithEvents:(Events*)eventsObject;
@end
