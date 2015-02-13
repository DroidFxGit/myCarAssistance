//
//  SecondViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 1/12/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "ReportHelpViewController.h"

@interface ReportHelpViewController ()

@end

@implementation ReportHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"reglamento.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webContainerRegulations loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
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
