//
//  AlunoViewController.m
//  TesteViewByCodigo
//
//  Created by Cassio Dias on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AlunoViewController.h"

@implementation AlunoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)buttonTouched
{    
    [[[UIAlertView alloc] initWithTitle:@"Title" 
                          message:txtnome.text 
                          delegate:nil
                          cancelButtonTitle:@"OK" 
                          otherButtonTitles:nil] show]; 
    
    for (UIView *view in self.view.subviews ){
        if (view.tag >=1001 && view.tag <=1003)
            [view removeFromSuperview];
    }
    
    NSLog(@"eee");
}

-(void)btnDinamicoTouched:(UIButton*)sender
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:3]; 
    sender.alpha = 0.0;
    [UIView commitAnimations];
}

/* 
Metodo foi descomentado. Como nao tem xib, este é chamado. 
*/ 
- (void)loadView
{
    // Start manual com uma view com o frame como segue.
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0,0, 320, 460) ];
    //Cor de fundo
    self.view.backgroundColor = [UIColor blueColor];
    
    lblNome = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 22)];
    lblNome.backgroundColor = [UIColor blueColor ];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(10, 50, 150, 30)];
    [btn setTitle:@"Ok" forState:UIControlStateNormal];
    [btn addTarget:self 
         action:@selector(buttonTouched) 
         forControlEvents:UIControlEventTouchUpInside];
    
    txtnome = [[UITextField alloc] initWithFrame:CGRectMake(60, 10, 250, 30)];
    [txtnome setBorderStyle:UITextBorderStyleRoundedRect];
    txtnome.autocorrectionType = UITextAutocorrectionTypeNo;
    
    [self.view addSubview:lblNome];
    [self.view addSubview:btn];
    [self.view addSubview:txtnome];
    
    [txtnome setDelegate:self];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self buttonTouched];
    return YES;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    lblNome.text = @"Nome:";
    
    tipos = [NSArray arrayWithObjects:@"Tipo um",@"Tipo dois",@"Tipo tres", nil];
    
    NSInteger idx = 1;
    for (NSString *tipo in tipos){
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn setFrame:CGRectMake(10, 150 + (idx * 35), 300, 30)];
        [btn setTitle:tipo forState:UIControlStateNormal];
        //adicionando uma acao nesse botao (btnDinamicoTouched)
        [btn addTarget:self action:@selector(btnDinamicoTouched:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTag:(1000+idx)];
        
        [self.view addSubview:btn];
        
        idx++;
    }
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
