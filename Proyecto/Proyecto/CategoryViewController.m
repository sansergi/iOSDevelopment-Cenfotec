//
//  CategoryViewController.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryCustomTableViewCell.h"
#import "Category.h"
#import "EventsViewController.h"
#import "RealmManager.h"


#define CUSTOM_CELL_ID @"CategoryCustomTableViewCell"

@interface CategoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property RLMResults *categoryArray;
@end

@implementation CategoryViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"AgendaMe";
    [self registerCell];
    [self initializeCategoryArray];
}

-(void)registerCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_ID bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_ID];
}

-(void)initializeCategoryArray{
    self.categoryArray = [RealmManager getAllCategories];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categoryArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategoryCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_ID];
    Category *categoryToShow = self.categoryArray[indexPath.row];
    [cell setupCellWithCategoryObject:categoryToShow];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EventsViewController * eventsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"EventsViewController"];
    Category *categorySelected = self.categoryArray[indexPath.row];
    eventsViewController.categoryName = categorySelected.categoryTitle;
    [self.navigationController pushViewController:eventsViewController animated:YES];
}


@end
