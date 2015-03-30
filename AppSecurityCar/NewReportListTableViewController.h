//
//  NewReportListTableViewController.h
//  AppSecurityCar
//
//  Created by DroidFx on 3/29/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewReportListTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *dateTimePickerReport;



- (IBAction)cancelReportButton:(id)sender;

- (IBAction)SendReportButton:(id)sender;


@end
