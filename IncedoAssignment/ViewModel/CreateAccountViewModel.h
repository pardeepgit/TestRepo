//
//  CreateAccountViewModel.h
//  IncedoAssignment
//
//  Created by Chetu India on 21/04/17.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  void (^ CreateAccountSucess)();
typedef  void (^ CreateAccountFailure)();
typedef  void (^ CreateAccountAlreadyExist)();

@interface CreateAccountViewModel : NSObject

+ (void)createAccountWith: (NSString *)email andPassword: (NSString *) password withCreateAccountSucessCompletion: (CreateAccountSucess)sucessCompletion andCreateAccountFailureCompletion: (CreateAccountFailure)failureCompletion andWithCreateAccountAlreadyExistCompletion: (CreateAccountAlreadyExist) alreadyExistCompletion;

@end
