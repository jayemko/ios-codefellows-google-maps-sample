//
//  GMMapViewController.m
//  GoogleMapsSample
//
//  Created by Jason Koceja on 10/5/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "GMMapViewController.h"

@interface GMMapViewController ()

@end

@implementation GMMapViewController{
    GMSMapView *mapView_;
    GMSMarker *marker_;
}

-(void)loadView{
    // create a sample coordinate and zoom level
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:47.600601 longitude:-122.330828 zoom:17. bearing:0. viewingAngle:45.];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView_.myLocationEnabled = YES;
    mapView_.delegate = self;
    self.view = mapView_;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
    // create a marker in the center of the map
    marker_ = [GMSMarker markerWithPosition:CLLocationCoordinate2DMake(47.60061, -122.330828)];
    
    // set marker properties
    marker_.icon = [GMSMarker markerImageWithColor:MAIN_COLOR];
    marker_.title = @"Union Gospel Mission";
    marker_.map = mapView_;
    mapView_.settings.myLocationButton = YES;
    mapView_.selectedMarker = marker_;
}

#pragma mark - Google Map View Delegate

- (void)mapView:(GMSMapView *)mapView didTapInfoWindowOfMarker:(GMSMarker *)marker{

    NSLog(@"%@'s info window was tapped", marker.title);
}

@end
