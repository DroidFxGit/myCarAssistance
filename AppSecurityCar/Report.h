//
//  Report.h
//  AppSecurityCar
//
//  Created by DroidFx on 3/15/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Report : NSObject

@property (nonatomic, strong) NSString *nomAsegurado;
@property (nonatomic, strong) NSString *apellidosAseg;
@property (nonatomic, strong) NSString *edadAseg;
@property (nonatomic, strong) NSString *generoAseg;
@property (nonatomic, strong) NSString *Direccion;
@property (nonatomic, strong) NSString *telAsegurado;
@property (nonatomic, strong) NSString *emailAseg;
@property (nonatomic, strong) NSString *edoCivil;
@property (nonatomic, strong) NSString *numPoliza;
@property (nonatomic, strong) NSString *dateTime;

@end
