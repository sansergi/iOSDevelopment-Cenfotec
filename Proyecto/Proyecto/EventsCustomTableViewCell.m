//
//  EventsCustomTableViewCell.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "EventsCustomTableViewCell.h"
#import "Events.h"


@interface EventsCustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *eventsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *eventsDateLabel;


@end

@implementation EventsCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCellWithEvents:(Events*)eventsObject{
    self.eventsTitleLabel.text = eventsObject.eventsTitle;
    
    self.eventsDateLabel.text = eventsObject.eventsDate;

}


//-(NSString*)getDateInStringFormatWithDate:(NSDate*)date{
//    NSString *localizedDateTime = [NSDateFormatter localizedStringFromDate:date dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterMediumStyle];
//    return localizedDateTime;
//}

@end
