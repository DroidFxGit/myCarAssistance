//
//  SplashViewController.h
//  AppSecurityCar
//
//  Created by DroidFx on 2/3/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplashViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *splashImage;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *splashActivityIndicator;

@property (strong, nonatomic) IBOutlet UILabel *splashMessageStatus;
@end
