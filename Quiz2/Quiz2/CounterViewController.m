//
//  CounterViewController.m
//  Quiz2
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "CounterViewController.h"


@interface CounterViewController ()
@property (weak, nonatomic) IBOutlet UILabel *conteoLbl;

@end

@implementation CounterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.conteoLbl.text = _resultadoConteo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
