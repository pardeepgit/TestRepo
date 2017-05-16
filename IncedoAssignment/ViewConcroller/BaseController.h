//
//  BaseController.h
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  void (^ OkClickCompletion)();

@interface BaseController : UIViewController

- (void)showSuccessMsgWith:(NSString *)message withOkClickCompletion: (OkClickCompletion) clickCompletion;

- (void)showAlertWith:(NSString *)message;

@end
