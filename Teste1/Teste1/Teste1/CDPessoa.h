//
//  CDPessoa.h
//  Teste1
//
//  Created by Cassio Dias on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDPessoa : NSObject {
    //Atributos da classe
    NSInteger idade;
    float peso;
}

- (void) setIdade:(NSInteger)_idade;
- (NSInteger)idade;
- (void) setPeso:(float)_peso;
- (float)peso;
- (void)setPesoEIdade:(float)_peso :(NSInteger)_idade;

@end
