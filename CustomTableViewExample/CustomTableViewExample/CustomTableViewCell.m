//
//  CustomTableViewCell.m
//  CustomTableViewExample
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "Dog.h"




@interface CustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;

@end

@implementation CustomTableViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setUpCellwithDog:(Dog *)dog{
    self.leftLabel.text = dog.name;
    self.rightLabel.text = dog.color;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
