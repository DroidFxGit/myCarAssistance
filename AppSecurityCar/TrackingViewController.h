//
//  ViewController.h
//  AppSecurityCar
//
//  Created by DroidFx on 1/12/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface TrackingViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *trackingMapView;
@property UILabel *userLocationLabel;


@end

