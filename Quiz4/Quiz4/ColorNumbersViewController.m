//
//  ColorNumbersViewController.m
//  Quiz4
//
//  Created by Estudiantes on 11/19/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "ColorNumbersViewController.h"
#import "CustomTableViewCell.h"

#define CUSTOM_CELL_IDENTIFIER @"CustomTableViewCell"

@interface ColorNumbersViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableViewTable;
@property (strong, nonatomic) NSArray *numArray;
@end

@implementation ColorNumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Numbers];
    [self registerCustomCell];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_IDENTIFIER bundle:nil];
    [self.tableViewTable registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_IDENTIFIER];
}

-(void)Numbers
{
    
    NSMutableArray* numsArray = [[NSMutableArray alloc]init];
    
    for (int contador=0; contador< 5000; contador++)
    {
      [numsArray addObject:[NSString stringWithFormat:@"%d",contador]];        
    }
    
    self.numArray = [[NSArray alloc] initWithArray:numsArray];
    
}

#pragma mark - Navigation
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.numArray.count;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
 return 150;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_IDENTIFIER];
    
    NSString *number = self.numArray[indexPath.row];
    
   if([number intValue] % 2 ==0){
       cell.backgroundColor=[UIColor blueColor];
    }else{
    cell.backgroundColor=[UIColor redColor];
    }
    
    [cell setupCellWithNum:number];
    
    return cell;
}
@end
