//
//  CreateAccountViewModel.m
//  IncedoAssignment
//
//  Created by Chetu India on 21/04/17.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "CreateAccountViewModel.h"
#import "CoreDataManager.h"

@implementation CreateAccountViewModel

+ (void)createAccountWith: (NSString *)email andPassword: (NSString *) password withCreateAccountSucessCompletion: (CreateAccountSucess)sucessCompletion andCreateAccountFailureCompletion: (CreateAccountFailure)failureCompletion andWithCreateAccountAlreadyExistCompletion: (CreateAccountAlreadyExist) alreadyExistCompletion{
  
  BOOL userAlreadyExistFlag = [[CoreDataManager sharedInstance] validateUniqueEmailFromLocalForNewAccountBy:email];
  if (userAlreadyExistFlag == true){
    alreadyExistCompletion();
  }
  else{
    BOOL createAccountFlag = [[CoreDataManager sharedInstance] createUserAccountBy:email AndPassword:password];
    if (createAccountFlag == true){
      sucessCompletion();
    }
    else{
      failureCompletion();
    }
  }
}

@end
