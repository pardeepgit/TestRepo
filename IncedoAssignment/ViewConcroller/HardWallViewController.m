//
//  HardWallViewController.m
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "HardWallViewController.h"
#import "Constant.h"
#import "LoginViewController.h"
#import "MainViewController.h"


@interface HardWallViewController ()
@end


@implementation HardWallViewController

#pragma mark -  UIViewController class overrided method.
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
}



#pragma mark -  ---------- IBAction selector target methods.

#pragma mark -  loginButtonTapped method.
- (IBAction)loginButtonTapped:(id)sender{
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:MAIN bundle: nil];
  LoginViewController * vc = [storyboard instantiateViewControllerWithIdentifier:LOGINVIEWCONTROLLERIDENTIFIER];
  [self.navigationController pushViewController:vc animated:true];
}

#pragma mark -  skipLoginGoToMainButtonTapped method.
- (IBAction)skipLoginGoToMainButtonTapped:(id)sender{
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:MAIN bundle: nil];
  MainViewController * vc = [storyboard instantiateViewControllerWithIdentifier:MAINVIEWCONTROLLERIDENTIFIER];
  vc.userType = UnLogged;
  [self.navigationController pushViewController:vc animated:true];
}


#pragma mark -  memory management method.
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
