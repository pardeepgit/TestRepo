//
//  CreateAccountViewController.m
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "CreateAccountViewController.h"
#import "UtilityManager.h"
#import "CreateAccountViewModel.h"


@interface CreateAccountViewController ()
@end

@implementation CreateAccountViewController

#pragma mark -  UIViewController class overrided method.
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
  
}


#pragma mark -  ---------- IBAction selector target methods.

#pragma mark -  createUserAccountButtonTapped method.
- (IBAction)createUserAccountButtonTapped:(id)sender{
  
  if ([self isCreateAcoountFormValid] == true){
    NSString *email = textFieldEmail.text;
    NSString *password = textFieldPassword.text;
    
    [CreateAccountViewModel createAccountWith:email andPassword:password withCreateAccountSucessCompletion:^{
      // Account created success.
      
      [self showSuccessMsgWith:@"Account created successfully" withOkClickCompletion:^{
        [self.navigationController popViewControllerAnimated:true];
      }];
    }andCreateAccountFailureCompletion:^{
      // Account created failure.
      [self showAlertWith:@"Create Account failure, Try again"];

    }andWithCreateAccountAlreadyExistCompletion:^{
      // Account already exist.
      [self showAlertWith:@"Email already exist"];
    }];
  }
}

#pragma mark -  backButtonTapped method.
- (IBAction)backButtonTapped:(id)sender{
  [self.navigationController popViewControllerAnimated:true];
}







#pragma mark -  ---------- Helper methods.

#pragma mark -  isCreateAcoountFormValid method.
- (BOOL) isCreateAcoountFormValid{
  NSString *message = @"";
  if ([textFieldEmail.text isEqualToString:@""]){
    message = @"Enter Email First";
  }
  else if ([UtilityManager isValidEmail:textFieldEmail.text] == false){
    message = @"Enter Valid Email";
  }
  else if ([textFieldPassword.text isEqualToString:@""]){
    message = @"Enter Password First";
  }
  else if (![textFieldPassword.text isEqualToString:textFieldConfirmPassword.text]){
    message = @"Confirm Password Mismatch";
  }
  
  if ([message isEqualToString:@""]){
    return true;
  }
  else{
    [self showAlertWith:message];
    return false;
  }
}




#pragma mark -  ---------- UITextField Delegates methods.

#pragma mark -  textFieldShouldReturn method.
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  if (textField == textFieldEmail){
    [textFieldPassword becomeFirstResponder];
  }
  else if (textField == textFieldPassword){
    [textFieldConfirmPassword becomeFirstResponder];
  }
  else{
    [textField resignFirstResponder];
  }
  
  return YES;
}



#pragma mark -  memory management method.
- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
