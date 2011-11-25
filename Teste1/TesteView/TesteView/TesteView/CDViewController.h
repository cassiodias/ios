//
//  CDViewController.h
//  TesteView
//
//  Created by Cassio Dias on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblIdade;
@property (weak, nonatomic) IBOutlet UITextField *inputNome;


- (IBAction)tappedTouched:(id)sender;
- (IBAction)buttonTouched:(id)sender;

@end
