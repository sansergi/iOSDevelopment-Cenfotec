//
//  EventsViewController.m
//  Proyecto
//
//  Created by user122583 on 12/12/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "EventsViewController.h"
#import "EventsCustomTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "AddEventsTableViewController.h"
#import <Realm/Realm.h>
#import "RealmManager.h"

#define CUSTOM_CELL_ID @"EventsCustomTableViewCell"

@interface EventsViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property RLMArray *eventsArray;
@end

@implementation EventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCell];
    [self createAddEventsUIBarButtonItem];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    [self loadEvents];
}

-(void)loadEvents{
    self.eventsArray = [RealmManager getEventsWithCategoryName:self.categoryName];
     [self.tableView reloadData];
}

-(void)createAddEventsUIBarButtonItem{
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem)];
    self.navigationItem.rightBarButtonItem = addItem;
}

-(void)addItem{
    AddEventsTableViewController *addEventsTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddEventsTableViewController"];
    addEventsTableViewController.categoryName = self.categoryName;
    [self.navigationController pushViewController:addEventsTableViewController
                                         animated:YES];
}

-(void)registerCell{
    [self.tableView registerCellWithIdentifier:CUSTOM_CELL_ID];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.eventsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EventsCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_ID];
    [cell configureCellWithEvents:(Events*)self.eventsArray[indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
     [self.eventsArray removeObjectAtIndex:indexPath.row];
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 }

@end
