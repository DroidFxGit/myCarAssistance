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

- (IBAction)saveDataforSettings:(id)sender;


#pragma mark - textfields

@property (strong, nonatomic) IBOutlet UITextField *firstSecName;
@property (strong, nonatomic) IBOutlet UITextField *firstSecSurname;
@property (strong, nonatomic) IBOutlet UITextField *firstSecAddress;
@property (strong, nonatomic) IBOutlet UITextField *firstSecCP;
@property (strong, nonatomic) IBOutlet UITextField *firstSecCity;


@property (strong, nonatomic) IBOutlet UITextField *secondSecType;
@property (strong, nonatomic) IBOutlet UITextField *secondSecNum;
@property (strong, nonatomic) IBOutlet UITextField *secondSecDateExp;
@property (strong, nonatomic) IBOutlet UITextField *secondSecMat;


@end
