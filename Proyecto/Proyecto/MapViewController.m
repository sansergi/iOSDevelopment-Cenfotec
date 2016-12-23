//
//  MapViewController.m
//  Proyecto
//
//  Created by user122583 on 12/16/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "MapViewController.h"
@import UIKit;
#import <GoogleMaps/GoogleMaps.h>

@interface MapViewController()
@property (strong,nonatomic) NSString *direccionMapa;
//@property (nonatomic,weak) id <ViewControllerBDelegate> delegate;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:9.9357761 longitude:-84.1833868 zoom:12];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    mapView.mapType = kGMSTypeNormal;
    mapView.settings.compassButton = YES;
    mapView.settings.myLocationButton = YES;
    mapView.settings.zoomGestures = YES;
   
    mapView.delegate = self;
    self.view = mapView;
    
    GMSMarker *marker = [[GMSMarker alloc]init];
    marker.map = mapView;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - GMSMapViewDelegate

-(void)mapView:(GMSMapView *)mapView didTapPOIWithPlaceID:(NSString *)placeID name:(NSString *)name location:(CLLocationCoordinate2D)location
{
    _direccionMapa = name;
    
    NSLog(@"You tapped %@",_direccionMapa);
    
   
  if ([_delegate respondsToSelector:@selector(dataFromController:)])
    {
        [_delegate dataFromController:_direccionMapa];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}




@end
