//
//  UtilityManager.m
//  IncedoAssignment
//
//  Created by Chetu India on 21/04/17.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "UtilityManager.h"

@implementation UtilityManager

#pragma mark -  isValidEmail method.
+ (BOOL)isValidEmail: (NSString *)email{
  BOOL validateFlag;
  
  BOOL stricterFilter = NO;
  NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
  NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
  NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
  NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
  validateFlag = [emailTest evaluateWithObject:email];
  
  return validateFlag;
}

@end
