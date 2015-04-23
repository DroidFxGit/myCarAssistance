//
//  OptionsTableViewController.m
//  AppSecurityCar
//
//  Created by DroidFx on 3/29/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "OptionsTableViewController.h"
#import "OptionsCellTableViewCell.h"

@interface OptionsTableViewController ()

@property NSMutableArray *optionsForSelectArray;
@property NSMutableArray *imagesForSelections;

@end

@implementation OptionsTableViewController

@synthesize optionsForSelectArray;
@synthesize imagesForSelections;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    optionsForSelectArray = [NSMutableArray arrayWithObjects:@"No hay otro vehículo involucrado",
                                                        @"Estaba estacionado",
                                                        @"Salía de un estacionamiento",
                                                        @"Me estaba estacionando",
                                                        @"Entraba en una calle en sentido giratorio",
                                                        @"Circulaba en una calle de sentido giratorio",
                                                        @"Colisión por alcance",
                                                        @"Mismo sentido en carril diferente",
                                                        @"Cambiaba de carril",
                                                        @"Quizé rebasar",
                                                        @"Iba de reversa",
                                                        @"Venía de la derecha/izquierda",
                                                        @"El otro vehículo no respeto el semáforo",
                                                        @"Otro...", nil];
    
    imagesForSelections = [NSMutableArray arrayWithObjects: @"selection_001.jpg", @"selection_002.jpg",@"selection_003.jpg",
                                                            @"selection_004.jpg", @"selection_005.jpg",@"selection_006.jpg",
                                                            @"selection_007.jpg", @"selection_008.jpg",@"selection_009.jpg",
                                                            @"selection_010.jpg", @"selection_011.jpg",@"selection_012.jpg",
                                                            @"selection_013.jpg", @"selection_014.jpg", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//
//    // Return the number of sections.
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [optionsForSelectArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    OptionsCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"optionsCell" forIndexPath:indexPath];
    
    cell.titleOption.text = optionsForSelectArray[indexPath.row];
    cell.imageOption.image = [UIImage imageNamed:imagesForSelections[indexPath.row]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
