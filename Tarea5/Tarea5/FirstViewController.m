//
//  FirstViewController.m
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Dog.h"
#import "TableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "RealManager.h"
#import <Realm/Realm.h>


#define CUSTOM_CELL_ID @"TableViewCell"

@interface FirstViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *dogTable;
@property RLMResults *dogsArray;
@end

@implementation FirstViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Perros";
    [self registerCell];
    [self initializeCategoryArray];
    [self createAddDogsUIBarButtonItem];
}

-(void)registerCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_ID bundle:nil];
    [self.dogTable registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_ID];
}

-(void)initializeCategoryArray{
    self.dogsArray = [RealmManager getAllDogs];
    [self.dogTable reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dogsArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_ID];
    Dog *dogToShow = self.dogsArray[indexPath.row];
    [cell configureCellWithDogs:dogToShow];
    return cell;
}

-(void)createAddDogsUIBarButtonItem{
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem)];
    self.navigationItem.rightBarButtonItem = addItem;
}

-(void)addItem{
    SecondViewController  *addDogsTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:addDogsTableViewController
                                         animated:YES];
}

 
 @end


