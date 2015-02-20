//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
#import "Contador.h"
#import "Mostrador.h"

@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador contador];
    contador.mostradorDelegate = self;
//    faz atualizar as informaçoes do second view na primeira vez que entra nele
    [self atualiza];
}

//Não é delegate mas soluciona o problema
//-(void) viewDidAppear:(BOOL)animated{
//    [self click:self];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];

}

//implementa o metodo declarado no MostradorDelegate, pois é uma interface e o second view implementa essa classe
-(void)atualiza{
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}


@end
