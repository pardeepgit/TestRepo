//
//  LoginViewController.m
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "LoginViewController.h"
#import "Constant.h"
#import "UtilityManager.h"
#import "CreateAccountViewController.h"
#import "MainViewController.h"
#import "LoginViewModel.h"

@interface LoginViewController ()
@end

@implementation LoginViewController

#pragma mark -  UIViewController class overrided method.
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
}






#pragma mark -  ---------- IBAction selector target methods.

#pragma mark -  loginUserButtonTapped method.
- (IBAction)loginUserButtonTapped:(id)sender{
  
  if ([self isLoginFormValid] == true){
    NSString *email = textFieldEmail.text;
    NSString *password = textFieldPassword.text;
    
    [LoginViewModel loginUserWith:email andPassword:password withSucessLoginCompletion:^{
      // For Success login;
      [self showSuccessMsgWith:@"Login successfully" withOkClickCompletion:^{
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:MAIN bundle: nil];
        MainViewController *vc = [storyboard instantiateViewControllerWithIdentifier:MAINVIEWCONTROLLERIDENTIFIER];
        vc.userType = Logged;
        [self.navigationController pushViewController:vc animated:true];
      }];
    }andFailureLoginCompletion:^{
      // Login failure;
      [self showAlertWith:@"Wrong Credetials, Try with others"];
    }];
  }
}

#pragma mark -  createAccountButtonTapped method.
- (IBAction)createAccountButtonTapped:(id)sender{
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:MAIN bundle: nil];
  CreateAccountViewController * vc = [storyboard instantiateViewControllerWithIdentifier:CREATEACCOUNTVIEWCONTROLLERIDENTIFIER];
  [self.navigationController pushViewController:vc animated:true];
}

#pragma mark -  backButtonTapped method.
- (IBAction)backButtonTapped:(id)sender{
  [self.navigationController popViewControllerAnimated:true];
}



#pragma mark -  ---------- Helper methods.

#pragma mark -  isLoginFormValid method.
- (BOOL) isLoginFormValid{
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
