//
//  OptionsCellTableViewCell.m
//  AppSecurityCar
//
//  Created by DroidFx on 3/29/15.
//  Copyright (c) 2015 DroidFx. All rights reserved.
//

#import "OptionsCellTableViewCell.h"

@implementation OptionsCellTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.imageOption.layer.cornerRadius = 7.5f;
    self.imageOption.layer.borderWidth = 1.5f;
    self.imageOption.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.imageOption.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
