//
//  SettingViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 2/14/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@property UIActionSheet *optionsMenu;
@property UIImagePickerController *picker;

@end

@implementation SettingViewController

@synthesize pickedImage;
@synthesize buttonImage;
@synthesize optionsMenu;
@synthesize picker;
@synthesize firstSecName, firstSecSurname, firstSecAddress, firstSecCity, firstSecCP,
secondSecType, secondSecNum, secondSecDateExp, secondSecMat;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self loadDataforSettings];
    
    pickedImage.layer.cornerRadius = self.pickedImage.frame.size.width / 2;
    //pickedImage.layer.borderWidth = 3.0f;
    //pickedImage.layer.borderColor = [UIColor lightGrayColor].CGColor;
    pickedImage.clipsToBounds = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
}



#pragma mark - Select Image
- (IBAction)selectImage:(id)sender {
    
    buttonImage.hidden = YES;
    
    optionsMenu = [[UIActionSheet alloc] initWithTitle:@"Seleccione el origen de la imagen de su preferencia"
                                              delegate:self
                                     cancelButtonTitle:@"Cancelar"
                                destructiveButtonTitle:nil
                                     otherButtonTitles:@"Seleccionar de la galeria", @"tomar nueva foto", nil
                   ];
    optionsMenu.delegate = self;
    [optionsMenu showInView:self.view];
    
}



- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    //consigue el nombre del botón presionado
    NSString *buttonTitle = [optionsMenu buttonTitleAtIndex:buttonIndex];
    
    switch (buttonIndex) {
        case 0:
            NSLog(@"button clicked: %@", buttonTitle);
            [self pickPhotofromGallery];
            break;
        case 1:
            NSLog(@"button clicked: %@", buttonTitle);
            [self takePhotofromCamera];
            
        case 2:
            NSLog(@"button clicked: %@", buttonTitle);
            buttonImage.hidden = NO;
            break;
            
        default:
            break;
    }
    
}

//deprecated: Implement with new UIAlertController for new versions
- (void)willPresentActionSheet:(UIActionSheet *)actionSheet {
    
    for (UIView *subView in actionSheet.subviews) {
        if ([subView isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)subView;
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        }
    }
    
}



#pragma mark - take por pick a photo
- (void)takePhotofromCamera {
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"Device has no camera"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [myAlertView show];
        
    } else {
        
        picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:picker animated:YES completion:nil];
        
    }
    
}


- (void)pickPhotofromGallery {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:nil];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    pickedImage.image = chosenImage;
    
    
    [self.picker dismissViewControllerAnimated:YES completion:nil];
    buttonImage.hidden = NO;
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self.picker dismissViewControllerAnimated:YES completion:nil];
    buttonImage.hidden = NO;
}



#pragma mark - save info / load data

- (IBAction)saveDataforSettings:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:firstSecName.text forKey:@"preferenceName"];
    
    UIImage *preferenceImage = pickedImage.image;
    NSData *imageData = UIImagePNGRepresentation(preferenceImage);
    [[NSUserDefaults standardUserDefaults] setObject:imageData forKey:@"preferenceImage"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


- (void) loadDataforSettings {
    
    //profile image
    NSData *imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"preferenceImage"];
    if (imageData) {
        
        UIImage *imageSet = [UIImage imageWithData:imageData];
        pickedImage.image = imageSet;
        
    }
    
    
    //personal data
    firstSecName.text = [[NSUserDefaults standardUserDefaults]
                         stringForKey:@"preferenceName"];
    
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
