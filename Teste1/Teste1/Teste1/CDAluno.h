//
//  CDAluno.h
//  Teste1
//
//  Created by Cassio Dias on 11/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CDPessoa.h"

@interface CDAluno : CDPessoa {
    NSInteger matricula;
}

-(void)setPeso:(float)_peso;
-(void)setMatricula:(NSInteger)_matricula;
-(NSInteger)matricula;

@end
