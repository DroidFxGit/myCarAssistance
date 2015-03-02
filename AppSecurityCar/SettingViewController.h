//
//  SettingViewController.h
//  AppSecurityCar
//
//  Created by DroidFx on 2/14/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UITableViewController <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *pickedImage;
@property (strong, nonatomic) IBOutlet UIButton *buttonImage;

- (IBAction)selectImage:(id)sender;

@end
