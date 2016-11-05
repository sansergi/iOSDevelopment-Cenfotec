//
//  ViewController.m
//  Tarea1
//
//  Created by Sergio Sanchez V on 11/2/16.
//  Copyright © 2016 Sergio Sanchez V. All rights reserved.
//

#import "ViewController.h"
#import "ResultadoViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1TextField;
@property (weak, nonatomic) IBOutlet UITextField *num2TextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chkNum1:(id)sender {
    NSScanner *scanner = [NSScanner scannerWithString:self.num1TextField.text];
    BOOL isNumeric = [scanner scanInteger:NULL] && [scanner isAtEnd];
    
    
    if(isNumeric==0){
        UIAlertController *alerta =[UIAlertController alertControllerWithTitle:@"Error" message:@"Ingrese un numero mayor o igual a cero" preferredStyle:UIAlertControllerStyleAlert  ];
        
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK action")
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action)
                                   {
                                       NSLog(@"OK action");
                                   }];
        
        [alerta addAction:okAction];
        
        [self presentViewController:alerta animated:YES completion:nil];
    }

}


- (IBAction)chkDivZero:(id)sender {
    
    if([self.num2TextField.text intValue]==0){
        UIAlertController *alerta =[UIAlertController alertControllerWithTitle:@"Error" message:@"Ingrese un numero mayor a cero" preferredStyle:UIAlertControllerStyleAlert  ];
        
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK action")
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action)
                                   {
                                       NSLog(@"OK action");
                                   }];
        
        [alerta addAction:okAction];
        
        [self presentViewController:alerta animated:YES completion:nil];
    }
}




-(int)suma: (int)a mas:(int)b{
    return a + b;
}

-(int)resta: (int)a menos:(int)b{
    return a - b;
}

-(int)multiplica: (int)a por:(int)b{
    return a * b;
}

-(float)divide: (float)a entre:(float)b{
    return a / b;
}



- (IBAction)sumButton:(id)sender {
    int num1 = [self.num1TextField.text intValue];
    int num2 = [self.num2TextField.text intValue];

    int resultado = [self suma:num1 mas:num2];
    NSString *cadena = [NSString stringWithFormat:@"El resultado de la suma es: %d",resultado];

    ResultadoViewController *nextViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultadoViewController"];
    nextViewController.resultadoOperacion = cadena;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}

- (IBAction)restaButton:(id)sender {
    int num1 = [self.num1TextField.text intValue];
    int num2 = [self.num2TextField.text intValue];
    
    int resultado = [self resta:num1 menos:num2];
    NSString *cadena = [NSString stringWithFormat:@"El resultado de la resta es: %d",resultado];
    
    ResultadoViewController *nextViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultadoViewController"];
    nextViewController.resultadoOperacion = cadena;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}
- (IBAction)multButton:(id)sender {
    int num1 = [self.num1TextField.text intValue];
    int num2 = [self.num2TextField.text intValue];
    
    int resultado = [self multiplica:num1 por:num2];
    NSString *cadena = [NSString stringWithFormat:@"El resultado de la multiplicacion es: %d",resultado];
    
    ResultadoViewController *nextViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultadoViewController"];
    nextViewController.resultadoOperacion = cadena;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}
- (IBAction)divButton:(id)sender {
    float num1 = [self.num1TextField.text floatValue];
    float num2 = [self.num2TextField.text floatValue];
    
    float resultado = [self divide:num1 entre:num2];
    NSString *cadena = [NSString stringWithFormat:@"El resultado de la division es: %f",resultado];
    
    ResultadoViewController *nextViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultadoViewController"];
    nextViewController.resultadoOperacion = cadena;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}





@end
