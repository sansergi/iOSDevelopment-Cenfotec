//
//  MapViewController.h
//  Proyecto
//
//  Created by user122583 on 12/16/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;
@class MapViewController;
@protocol MapViewControllerDelegate <NSObject>
- (void)dataFromController:(NSString *)data;
@end
@interface MapViewController : UIViewController <GMSMapViewDelegate>
@property (nonatomic, retain) NSString *data;
@property (nonatomic, weak) id<MapViewControllerDelegate> delegate;
@end
