//
//  MultTableViewController.m
//  Tarea2
//
//  Created by user122583 on 11/9/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "MultTableViewController.h"
#define VALUE_KEY @"value"
#define RESULT_KEY @"result"

@interface MultTableViewController ()
@property(nonatomic,strong) NSArray *resultsArray;

@end

@implementation MultTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self createDictionary];
    
    
}

-(void)createDictionary{
    
    NSDictionary *firstDictionary = @{VALUE_KEY:@"7x1=",
                                      RESULT_KEY:@"7"};
    NSDictionary *secondDictionary = @{VALUE_KEY:@"7x2=",
                                      RESULT_KEY:@"14"};
    NSDictionary *thirdDictionary = @{VALUE_KEY:@"7x3=",
                                      RESULT_KEY:@"21"};
    NSDictionary *fourthDictionary = @{VALUE_KEY:@"7x4=",
                                      RESULT_KEY:@"28"};
    NSDictionary *fifthDictionary = @{VALUE_KEY:@"7x5=",
                                       RESULT_KEY:@"35"};
    NSDictionary *sixthDictionary = @{VALUE_KEY:@"7x6=",
                                       RESULT_KEY:@"42"};
    NSDictionary *seventhDictionary = @{VALUE_KEY:@"7x7=",
                                       RESULT_KEY:@"49"};
    NSDictionary *eightDictionary = @{VALUE_KEY:@"7x8=",
                                       RESULT_KEY:@"56"};
    NSDictionary *ninethhDictionary = @{VALUE_KEY:@"7x9=",
                                       RESULT_KEY:@"63"};
    NSDictionary *tenthDictionary = @{VALUE_KEY:@"7x10=",
                                       RESULT_KEY:@"70"};
    NSDictionary *eleventhDictionary = @{VALUE_KEY:@"7x11=",
                                       RESULT_KEY:@"77"};
   
    
    self.resultsArray = [[NSArray alloc] initWithObjects:firstDictionary,secondDictionary,thirdDictionary,fourthDictionary,fifthDictionary,sixthDictionary,seventhDictionary,eightDictionary,ninethhDictionary,tenthDictionary,eleventhDictionary, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.resultsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *currentTable = self.resultsArray[indexPath.row];
    
    cell.textLabel.text = [currentTable valueForKey:VALUE_KEY];
    
    cell.detailTextLabel.text = [currentTable valueForKey:RESULT_KEY];
    
    
  
    
    return cell;
}

@end
