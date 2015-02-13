//
//  SplashViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 2/3/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()


@property (nonatomic, readonly) BOOL isStatusBarInitiallyHidden;

@end

@implementation SplashViewController

@synthesize splashActivityIndicator, splashMessageStatus;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Default-568h@2x_testing"]]];
    [self.navigationController setNavigationBarHidden:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(showAnimation:) userInfo:nil repeats:NO];
    
}


- (void) showAnimation:(NSTimer *) timer {
    
    
    [UIView animateWithDuration:7.0 animations:^{
        //start animation
        splashActivityIndicator.alpha = 1.0;
        splashMessageStatus.alpha = 1.0;
        [splashActivityIndicator startAnimating];
    } completion:^(BOOL finished) {
        //after animation
        [self performSelector:@selector(showMainMenu) withObject:nil afterDelay:2.0];
    }];
    
    
}

- (void) showMainMenu {
    self.view.alpha = 0.5;
    [self performSegueWithIdentifier:@"performHomeView" sender:self];
}

- (BOOL)prefersStatusBarHidden {
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
