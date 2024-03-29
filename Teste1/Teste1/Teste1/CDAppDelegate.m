//
//  CDAppDelegate.m
//  Teste1
//
//  Created by Cassio Dias on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CDAppDelegate.h"
#import "CDPessoa.h"
#import "CDTreinamento.h"


@implementation CDAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Classe
    CDPessoa *pessoa = [[CDPessoa alloc] initComNome:@"Cassio Dias"];
    [pessoa setPeso:40.0];
    [pessoa setIdade:30];
    NSLog(@"Idade = %u e Peso = %2.f Nome= %@",[pessoa idade],[pessoa peso], [pessoa nome]);
    
    CDTreinamento *treinamento = [[CDTreinamento alloc] init];
    [treinamento addPessoa:pessoa];
    
    for (CDPessoa *pessoa in [treinamento listar]){
        NSLog(@"Pessoa= %@", [pessoa nome]);
    }
    
    //Array
    NSMutableArray *mArray = [[NSMutableArray alloc] initWithObjects:@"um",@"dois",@"tres", nil];
    NSLog(@"Valor da posicao ZERO: %@", [mArray objectAtIndex:0]);
    
    [mArray addObject:@"4"];
    
    //foreach
    for (NSString *idx in mArray){
        NSLog(@"Valor da posicao atual: %@",idx);
    }
    
    //for comum
    for (int y = 0; y < 3; y++) {
        NSLog(@"y = %i", y);
    }
    
    [
     [[UIAlertView alloc] initWithTitle:@"Uepa!"
                                                     message:@"Hello Fucking World"
                                                    delegate:self
                                           cancelButtonTitle:@"Ok"
                                           otherButtonTitles:nil] show 
    ];
   
       
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
