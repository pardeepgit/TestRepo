//
//  CreateAccountViewController.h
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "BaseController.h"

@interface CreateAccountViewController : BaseController{
  
#pragma mark -  ------ IBOutlet widget components declarations.
  IBOutlet __weak UITextField *textFieldEmail;
  IBOutlet __weak UITextField *textFieldPassword;
  IBOutlet __weak UITextField *textFieldConfirmPassword;
}

#pragma mark -  ------ IBAction target selector declarations.
- (IBAction)createUserAccountButtonTapped:(id)sender;
- (IBAction)backButtonTapped:(id)sender;

@end
