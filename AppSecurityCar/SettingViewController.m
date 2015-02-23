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

@end

@implementation SettingViewController

@synthesize pickedImage;
@synthesize buttonImage;
@synthesize optionsMenu;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    [optionsMenu showInView:self.view];
    
}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    //consigue el nombre del botón presionado
    NSString *buttonTitle = [optionsMenu buttonTitleAtIndex:buttonIndex];
    
    switch (buttonIndex) {
        case 0:
            NSLog(@"button clicked: %@", buttonTitle);
            break;
        case 1:
            NSLog(@"button clicked: %@", buttonTitle);
            
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
