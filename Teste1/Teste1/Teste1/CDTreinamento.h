//
//  CDTreinamento.h
//  Teste1
//
//  Created by Cassio Dias on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDPessoa.h"

@interface CDTreinamento : NSObject {
    NSMutableArray *pessoas;
}

- (void)addPessoa:(CDPessoa*)novaPessoa;
- (NSMutableArray*)listar;

@end
