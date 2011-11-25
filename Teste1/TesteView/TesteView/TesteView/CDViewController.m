//
//  CDViewController.m
//  TesteView
//
//  Created by Cassio Dias on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CDViewController.h"

@implementation CDViewController
@synthesize lblIdade;
@synthesize inputNome;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    lblIdade.text = @"30";
}

- (void)viewDidUnload
{
    [self setLblIdade:nil];
    [self setInputNome:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Quando aparecer, já indica que o input text é o responder e o teclado aparece...
    [inputNome becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)tappedTouched:(id)sender {
    UIStepper *stp = sender;
    NSLog(@"%f", stp.value);
    lblIdade.text = [[NSString alloc] initWithFormat:@"%0.f",stp.value];
}

- (IBAction)buttonTouched:(id)sender {
    NSLog(@"Button OK clicado! %@", [inputNome text]);
    [[
      [UIAlertView alloc] 
          initWithTitle:@"Mensagem" 
          message:[inputNome text] delegate:nil 
          cancelButtonTitle:@"OK" 
          otherButtonTitles:nil, nil] show];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [[
      [UIAlertView alloc] 
      initWithTitle:@"Mensagem" 
      message:[inputNome text] delegate:nil 
      cancelButtonTitle:@"OK" 
      otherButtonTitles:nil, nil] show];
    
    return YES;
}

@end