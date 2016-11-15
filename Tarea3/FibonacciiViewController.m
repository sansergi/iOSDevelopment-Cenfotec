//
//  FibonacciiViewController.m
//  Tarea3
//
//  Created by user122583 on 11/15/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "FibonacciiViewController.h"
#import "TableViewCell.h"

#define CUSTOM_CELL_IDENTIFIER @"TableViewCell"

@interface FibonacciiViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *TableView;
@property (strong, nonatomic) NSArray *numArray;


@end

@implementation FibonacciiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Fibonacci];
    [self registerCustomCell];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_IDENTIFIER bundle:nil];
    [self.TableView registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_IDENTIFIER];
}


-(void)Fibonacci
{
    int range = 1000;
    NSMutableArray* numsArray = [[NSMutableArray alloc]init];
    for (int contador=0; contador< range; contador++)
    {
        if(contador<2)
        {
            [numsArray addObject:[NSString stringWithFormat:@"%d",contador]];
            continue;
        }
        else
        {
            int fib = [[numsArray objectAtIndex:contador-2] intValue] + [[numsArray objectAtIndex:contador-1] intValue];
            [numsArray addObject:[NSString stringWithFormat:@"%d",fib]];
        }
        
    }
    
    self.numArray = [[NSArray alloc] initWithArray:numsArray];
    
    
}

#pragma -mark TABLE VIEW METHODS

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.numArray.count;
}


/*-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}*/


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_IDENTIFIER];
  
    NSString *number = self.numArray[indexPath.row];
    
    [cell setupCellWithNum:number];
    return cell;
}

@end
