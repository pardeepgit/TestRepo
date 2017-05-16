//
//  BaseController.m
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "BaseController.h"

@interface BaseController ()
@end

@implementation BaseController

#pragma mark -  UIViewController class overrided method.
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
}



#pragma mark -  showAlertWith alert message method.
- (void)showAlertWith:(NSString *)message{
  UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Alert!!"
                               message:message
                               preferredStyle:UIAlertControllerStyleAlert];
  //Add Buttons
  UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"Ok"
                              style:UIAlertActionStyleDefault
                              handler:^(UIAlertAction * action) {
                                //Handle your yes please button action here
                              }];
  
  //Add your buttons to alert controller
  [alert addAction:okButton];
  
  [self presentViewController:alert animated:YES completion:nil];
}


#pragma mark -  showSuccessMsgWith alert message method.
- (void)showSuccessMsgWith:(NSString *)message withOkClickCompletion: (OkClickCompletion) clickCompletion{
  UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Success!!"
                                                                  message:message
                                                           preferredStyle:UIAlertControllerStyleAlert];
  //Add Buttons
  UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"Ok"
                                                     style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action) {
                                                     //Handle your yes please button action here
                                                     
                                                     // Code to call Ok action click completion.
                                                     clickCompletion();
                                                   }];
  
  //Add your buttons to alert controller
  [alert addAction:okButton];
  
  [self presentViewController:alert animated:YES completion:nil];
}



#pragma mark -  memory management method.
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
