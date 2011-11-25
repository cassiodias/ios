//
//  AlunoViewController.h
//  TesteViewByCodigo
//
//  Created by Cassio Dias on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlunoViewController : UIViewController <UITextFieldDelegate>
{
    UILabel *lblNome;
    UITextField *txtnome;
    NSArray *tipos;
}
@end
