//
//  CustomTableViewController.m
//  CustomTableViewExample
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "CustomTableViewController.h"
#import "Dog.h"
#import "CustomTableViewCell.h"

#define CUSTOM_CELL_IDENTIFIER @"CustomTableViewCell"

@interface CustomTableViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *dogsArray;
@end

@implementation CustomTableViewController

-(void)registerCustomCell{

    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_IDENTIFIER bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_IDENTIFIER];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initializeDogsArray{
    Dog *dog1 = [[Dog alloc] initWithName:@"Dog1" color:@"Color1"];
    Dog *dog2 = [[Dog alloc] initWithName:@"Dog2" color:@"Color2"];
    Dog *dog3 = [[Dog alloc] initWithName:@"Dog3" color:@"Color3"];
    Dog *dog4 = [[Dog alloc] initWithName:@"Dog4" color:@"Color4"];
    Dog *dog5 = [[Dog alloc] initWithName:@"Dog5" color:@"Color5"];
    
    self.dogsArray = [[NSArray alloc] initWithObjects:dog1,dog2,dog3,dog4,dog5, nil];
}

#pragma -mark TABLE VIEW METHODS

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dogsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

@end
