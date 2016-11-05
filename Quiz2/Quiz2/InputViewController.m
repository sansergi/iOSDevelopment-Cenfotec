//
//  InputViewController.m
//  Quiz2
//
//  Created by Estudiantes on 11/5/16.
//  Copyright © 2016 gv. All rights reserved.
//

#import "InputViewController.h"
#import "CounterViewController.h"

@interface InputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cadenaTxt;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)conteoBtn:(id)sender {
    
    NSUInteger characterCount = [self.cadenaTxt.text length];
    
    NSString *mensaje = [NSString stringWithFormat:@"La cantidad de caracteres ingresados es: %lu",(unsigned long)characterCount];
    
    CounterViewController *nextViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CounterViewController"];
    nextViewController.resultadoConteo = mensaje;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
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
