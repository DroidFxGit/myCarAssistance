//
//  ViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 1/12/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "TrackingViewController.h"


/*constantes*/
#define themeGreenColor [UIColor colorWithRed:50.0/255.0 green:205.0/255.0 blue:50.0/255.0 alpha:1.0]

@interface TrackingViewController ()



@end

@implementation TrackingViewController

@synthesize trackingMapView, userLocationLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self viewDidAppear:YES];

    
    trackingMapView.delegate = self;
    
    trackingMapView.mapType = MKMapTypeStandard;
    
    [self.view addSubview:trackingMapView];
    
    //19.397104, -99.094414 hard code
    CLLocationCoordinate2D code3eLocation = CLLocationCoordinate2DMake(19.397104, -99.094414);
    
    trackingMapView.region = MKCoordinateRegionMakeWithDistance(code3eLocation, 100.0f, 100.0f);
    
    
    if ([CLLocationManager locationServicesEnabled]) {
        trackingMapView.showsUserLocation = YES;
        
        // Controlar el comportamiento del mapa al rastrear la ubicación del usuario
        trackingMapView.userTrackingMode = MKUserTrackingModeFollow;
    }
    
    
    userLocationLabel = [[UILabel alloc] initWithFrame:CGRectMake(60.0f, self.view.frame.size.height - 75.0f, 200.0f, 21.0f)];
    userLocationLabel.backgroundColor = [UIColor clearColor];
    userLocationLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:userLocationLabel];
    
    
    // Crear un annotation para señalar un lugar concreto en un mapa
    MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
    myAnnotation.coordinate = CLLocationCoordinate2DMake(19.397104, -99.094414);
    myAnnotation.title = @"Mi auto";
    myAnnotation.subtitle = @"¿Levantar reporte de robo?";
    [trackingMapView addAnnotation:myAnnotation];
    
}


#pragma mark - MKMapViewDelegate

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    userLocationLabel.text = [NSString stringWithFormat:@"%f, %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude];
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    MKPinAnnotationView *myPin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"MyPin"];
    myPin.canShowCallout = YES;
    myPin.draggable = YES;
    myPin.pinColor = MKPinAnnotationColorRed;
    
    UIButton *displayDirectionsButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [displayDirectionsButton setImage:[UIImage imageNamed:@"car"] forState:UIControlStateNormal];
    [displayDirectionsButton setTintColor:[UIColor colorWithRed:(50.0/255.0) green:(205.0/255.0) blue:(50.0/255.0) alpha:1.0]];
    [displayDirectionsButton sizeToFit];
    
    myPin.leftCalloutAccessoryView = displayDirectionsButton;
    myPin.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return myPin;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
