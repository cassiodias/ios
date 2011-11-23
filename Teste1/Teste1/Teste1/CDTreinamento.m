//
//  CDTreinamento.m
//  Teste1
//
//  Created by Cassio Dias on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CDTreinamento.h"

@implementation CDTreinamento

- (id)init {
    self = [super init];
    if (self) {
       pessoas = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addPessoa:(CDPessoa*)novaPessoa 
{
    [pessoas addObject:novaPessoa];
}

- (NSMutableArray*)listar
{
    return pessoas;
}

@end
