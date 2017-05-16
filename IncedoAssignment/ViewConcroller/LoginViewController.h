//
//  LoginViewController.h
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "BaseController.h"

@interface LoginViewController : BaseController{
  
#pragma mark -  ------ IBOutlet widget components declarations.
  IBOutlet __weak UITextField *textFieldEmail;
  IBOutlet __weak UITextField *textFieldPassword;
}

#pragma mark -  ------ IBAction target selector declarations.
- (IBAction)loginUserButtonTapped:(id)sender;
- (IBAction)createAccountButtonTapped:(id)sender;
- (IBAction)backButtonTapped:(id)sender;

@end
