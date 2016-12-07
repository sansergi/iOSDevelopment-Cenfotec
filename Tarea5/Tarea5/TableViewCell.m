//
//  TableViewCell.m
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "TableViewCell.h"
#import "Dog.h"


@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageLabel;


@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)configureCellWithDogs:(Dog*)dogObject{
    self.nameLabel.text = dogObject.name;
    self.colorLabel.text = dogObject.color;
    self.imageLabel.image = [UIImage imageNamed:dogObject.imageDog];
   
}




@end
