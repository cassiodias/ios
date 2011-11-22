//
//  CDPessoa.m
//  Teste1
//
//  Created by Cassio Dias on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CDPessoa.h"

@implementation CDPessoa

// construtor override
- (id)initComNome:(NSString*)n 
{
    self = [super init];
    if (self){
        nome = n;
    }    
    return self;
}

- (void) setIdade:(NSInteger)_idade 
{
    idade = _idade;
}

- (NSInteger)idade 
{
    return idade;
}


- (void) setPeso:(float)_peso
{
    peso = _peso;
}

- (float)peso
{
    return peso;
}

- (void)setPeso:(float)_peso 
          idade:(NSInteger)_idade
{
    idade = _idade;
    peso = _peso;
}

- (NSString *) nome 
{
    return nome;
}

@end