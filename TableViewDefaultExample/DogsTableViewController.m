//
//  DogsTableViewController.m
//  TableViewDefaultExample
//
//  Created by Estudiantes on 10/29/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "DogsTableViewController.h"
#define NAME_KEY @"name"
#define COLOR_KEY @"color"

@interface DogsTableViewController ()
@property(nonatomic,strong) NSArray *dogsArray;

@end

@implementation DogsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createDictionary];
}

-(void)createDictionary{
    
    NSDictionary *firstDictionary = @{NAME_KEY:@"Bruno",
                                      COLOR_KEY:@"Negro"};
    NSDictionary *secondDictionary = @{NAME_KEY:@"Sam",
                                      COLOR_KEY:@"Blanco"};
    NSDictionary *thirdDictionary = @{NAME_KEY:@"Kai",
                                      COLOR_KEY:@"Gris"};
    NSDictionary *fourthDictionary = @{NAME_KEY:@"Kit",
                                      COLOR_KEY:@"Cafe"};
    
    self.dogsArray = [[NSArray alloc] initWithObjects:firstDictionary,secondDictionary,thirdDictionary,fourthDictionary, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dogsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *currentDog = self.dogsArray[indexPath.row];
    
    cell.textLabel.text = [currentDog valueForKey:NAME_KEY];
    
    if(indexPath.row %2 ==0){
    cell.detailTextLabel.text = [currentDog valueForKey:COLOR_KEY];
    }else
    {
    cell.detailTextLabel.text = @"";
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
