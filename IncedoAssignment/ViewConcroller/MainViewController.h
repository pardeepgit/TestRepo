//
//  MainViewController.h
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "BaseController.h"
#import "Constant.h"

@interface MainViewController : BaseController <UICollectionViewDataSource, AVPlayerViewControllerDelegate>{
  
#pragma mark -  ------ IBOutlet widget components declarations.
  IBOutlet __weak UICollectionView *videoCollectionView;
}

@property UserType userType;
@property (nonatomic, retain) NSMutableArray *videoObjectArray;

#pragma mark -  ------ IBAction target selector declarations.
- (IBAction)logoutButtonTapped:(id)sender;

@end
