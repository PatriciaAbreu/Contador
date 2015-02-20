//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//
//Patricia Abreu

#import <Foundation/Foundation.h>
#import "Contador.h"

@implementation Contador {
    int boy;
    int girl;
}

@synthesize mostradorDelegate;

 static Contador *contador = nil;

+(Contador *) contador{
    if(contador == nil){
        contador = [[Contador alloc] init];
    }
    return contador;
}


//Outro modo de fazer o Singleton

//(Contador *) instance{
//static Contador *sharedContador = nil;
//static dispatch_once_t onceToken;
//dispatch_once(&onceToken,
//              {
//                  sharedContador = [[self alloc] init];
//              });
//return sharedContador;
//}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy ++;
//    informa o delegate que os dados foram atualizados
    [mostradorDelegate atualiza];
}
- (void)maisUmaGata {
    girl++;
//    informa o delegate que os dados foram atualizados
    [mostradorDelegate atualiza];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return boy + girl;
}


@end

