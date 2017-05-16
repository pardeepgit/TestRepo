//
//  LoginViewModel.m
//  IncedoAssignment
//
//  Created by Chetu India on 21/04/17.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "LoginViewModel.h"
#import "CoreDataManager.h"

@implementation LoginViewModel

+ (void)loginUserWith:(NSString *)email andPassword: (NSString *) password withSucessLoginCompletion: (LoginSucess)sucessCompletion andFailureLoginCompletion:(LoginFailure)failureCompletion{
  
  BOOL loginFlag = [[CoreDataManager sharedInstance] validateUserFromLocalDatabaseBy:email andWithPassword:password];
  if (loginFlag == true){
    sucessCompletion();
  }
  else{
    failureCompletion();
  }
}

@end
