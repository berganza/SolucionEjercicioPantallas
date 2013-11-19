//
//  ViewController.m
//  SolucionEjercicioPantallas
//
//  Created by LLBER on 19/11/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

#import "FiguraView.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize circulo;

- (void)viewDidLoad {
    [super viewDidLoad];
	
    
    // Instanciamos la vista
    circulo = [[FiguraView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    // Posicionamos el objeto
    circulo.center = CGPointMake(25,50);
    // Añadimos la vista
    [self.view addSubview:circulo];
    
    // Instanciamos la propiedad de gesto con un selector
    UITapGestureRecognizer * gesto = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animacionMovimiento:)];
    // Añadimos dicha propiedad a la vista
    [self.view addGestureRecognizer:gesto];
}


// Definimos el selector
-(void) animacionMovimiento: (UIGestureRecognizer*) recognizer {
    
    // Incluimos una animación
    [UIView animateWithDuration:2 animations:^{
        // Inhabilitamos poder volver a tocar la pantalla
        recognizer.enabled = NO;
        // Definimos los límites de la pantalla donde llegará el centro del círculo
        //circulo.center = CGPointMake(320,480);// Básico 320,568
        
        // Intermedio/Avanzado
        circulo.center = CGPointMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(self.view.bounds));
        
    }
                     completion:^(BOOL finished) {
                         [UIView animateWithDuration:2 animations:^{
                             
                             // Básico
                             //circulo.center = CGPointMake(320, 0);
                             
                             
                             // Avanzado
                             circulo.center = CGPointMake(CGRectGetMaxX(self.view.bounds), CGRectGetMinY(self.view.bounds));
                         }
                                          completion:^(BOOL finished) {
                                              [UIView animateWithDuration:2 animations:^{
                                                  
                                                  // Básico
                                                  //circulo.center = CGPointMake(160, 240);
                                                  
                                                  // Intermedio
                                                  //circulo.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
                                                  
                                                  // Avanzado
                                                  circulo.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
                                              }
                                                               completion:^(BOOL finished) {
                                                                   recognizer.enabled = YES;
                                                               }];
                                          }];
                     }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
