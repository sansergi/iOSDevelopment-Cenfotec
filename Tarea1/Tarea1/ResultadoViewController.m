//
//  ResultadoViewController.m
//  Tarea1
//
//  Created by Sergio Sanchez V on 11/2/16.
//  Copyright © 2016 Sergio Sanchez V. All rights reserved.
//

#import "ResultadoViewController.h"

@interface ResultadoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultadoTxt;

@end

@implementation ResultadoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.resultadoTxt.text = _resultadoOperacion;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
