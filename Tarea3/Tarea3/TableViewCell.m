//
//  TableViewCell.m
//  Tarea3
//
//  Created by user122583 on 11/15/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *numLabel;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setupCellWithNum:(NSString *)number{
    self.numLabel.text = number;//[NSString stringWithFormat:@"%d", number];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
