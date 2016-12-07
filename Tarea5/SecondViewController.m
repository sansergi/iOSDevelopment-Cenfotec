//
//  SecondViewController.m
//  Tarea5
//
//  Created by user122583 on 12/5/16.
//  Copyright © 2016 Sergio Sanchez. All rights reserved.
//

#import "SecondViewController.h"
#import "Dog.h"
#import "RealManager.h"
#import <Realm/Realm.h>

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTxt;
@property (weak, nonatomic) IBOutlet UITextField *colorTxt;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveUIBarButtonItem];
}

-(void)addSaveUIBarButtonItem{
    UIBarButtonItem *saveBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveDogs)];
    self.navigationItem.rightBarButtonItem = saveBarButtonItem;
}

-(void)saveDogs{
    int randonnum = arc4random_uniform(5)+1;
    NSString *randomimage = [NSString stringWithFormat:@"dog%d",randonnum];
    
    [RealmManager createDog:self.nameTxt.text color:self.colorTxt.text imageDog:randomimage];
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
