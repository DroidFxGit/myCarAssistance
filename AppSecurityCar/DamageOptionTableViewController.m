//
//  DamageOptionTableViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 5/25/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "DamageOptionTableViewController.h"
#import "DamageOptionsTableViewCell.h"


@interface DamageOptionTableViewController ()

@property NSMutableArray *damageOptionsForSelectArray;
@property NSMutableArray *imagesForDamageOptions;

@end

@implementation DamageOptionTableViewController

@synthesize damageOptionsForSelectArray, imagesForDamageOptions;


- (void) viewDidLoad {
    
    damageOptionsForSelectArray = [NSMutableArray arrayWithObjects:@"Parte Frontal",
                             @"Parte Trasera",
                             @"Lateral izquierdo",
                             @"Lateral Derecho",
                             @"parte superior",
                             @"parte posterior", nil];
    
    imagesForDamageOptions = [NSMutableArray arrayWithObjects: @"dmg_001.jpg", @"dmg_002.jpg",@"dmg_003.jpg",
                           @"dmg_004.jpg", @"dmg_005.jpg",@"dmg_006.jpg", nil];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [damageOptionsForSelectArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DamageOptionsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DamageoptionsCell" forIndexPath:indexPath];
    
    cell.titleSectionCar.text = damageOptionsForSelectArray[indexPath.row];
    cell.carSectionImage.image = [UIImage imageNamed:imagesForDamageOptions[indexPath.row]];
    
    return cell;
}

@end
