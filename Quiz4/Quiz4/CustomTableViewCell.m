//
//  CustomTableViewCell.m
//  Quiz4
//
//  Created by Estudiantes on 11/19/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *numLabel;

@end

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setupCellWithNum:(NSString *)number{
    self.numLabel.text = number;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
