//
//  LoginViewModel.h
//  IncedoAssignment
//
//  Created by Chetu India on 21/04/17.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  void (^ LoginSucess)();
typedef  void (^ LoginFailure)();


@interface LoginViewModel : NSObject

+ (void)loginUserWith:(NSString *)email andPassword: (NSString *) password withSucessLoginCompletion: (LoginSucess)sucessCompletion andFailureLoginCompletion:(LoginFailure)failureCompletion;

@end
