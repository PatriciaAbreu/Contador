//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Mostrador.h"

@interface Contador : NSObject 

//Associa com o Delegate
@property id<MostradorDelegate> mostradorDelegate;

+(Contador *) contador;
- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end

