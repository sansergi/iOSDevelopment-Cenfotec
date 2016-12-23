//
//  AddEventsTableViewController.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "AddEventsTableViewController.h"
#import "Events.h"
#import "RealmManager.h"
#import "MapViewController.h"

@interface AddEventsTableViewController () <MapViewControllerDelegate,MapViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UITextField *direccionTextView;
@property (weak, nonatomic) IBOutlet UIButton *buscarButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation AddEventsTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveUIBarButtonItem];
    _direccionTextView.enabled = NO;

   
}

-(void)addSaveUIBarButtonItem{
    UIBarButtonItem *saveBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveEvents)];
    self.navigationItem.rightBarButtonItem = saveBarButtonItem;
}
- (IBAction)buscarDireccion:(id)sender {
    MapViewController *mapViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
    [self.navigationController pushViewController:mapViewController
                                         animated:YES];
}

- (void)dataFromController:(NSString *)data
{
    _direccionTextView.text = data;
}

-(void)saveEvents{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    
    [RealmManager createEventsWithCategoryName:self.categoryName eventsTitle:self.titleTextField.text eventsDescription:self.descriptionTextView.text eventsDirection:self.direccionTextView.text eventsDate: [dateFormatter stringFromDate:self.datePicker.date]];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.view endEditing:YES];
}

#pragma mark - Table view data source

@end
