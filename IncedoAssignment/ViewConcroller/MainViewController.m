//
//  MainViewController.m
//  IncedoAssignment
//
//  Created by Pardeep Kumar on 21/04/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "MainViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>


@interface MainViewController ()
@end


@implementation MainViewController

#pragma mark -  UIViewController class overrided method.
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  // Code to call screen UI initialization method.
  [self preparedScreenUiDesign];
}

- (void) viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];

  // Code to call method to load data to UI components.
  [self loadScreenData];
}



#pragma mark -  ---------- Screen UI and Data initialization methods.

#pragma mark -  preparedScreenUiDesign method.
- (void) preparedScreenUiDesign{
}

#pragma mark -  loadScreenData method.
- (void) loadScreenData{
  // Code to call method to prepare static data for video objects.
  [self prepareVideoStaticData];
  
  // Code to call notify method of UICollectionView to load list.
  [videoCollectionView reloadData];
}

#pragma mark -  loadScreenData method.
- (void) prepareVideoStaticData{
  self.videoObjectArray = [[NSMutableArray alloc] init];
  
  NSMutableDictionary *video1 = [[NSMutableDictionary alloc] init];
  [video1 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video1 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video2 = [[NSMutableDictionary alloc] init];
  [video2 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video2 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video3 = [[NSMutableDictionary alloc] init];
  [video3 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video3 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video4 = [[NSMutableDictionary alloc] init];
  [video4 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video4 setValue:@"1" forKey:@"videotype"];
  
  NSMutableDictionary *video5 = [[NSMutableDictionary alloc] init];
  [video5 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video5 setValue:@"2" forKey:@"videotype"];
  
  NSMutableDictionary *video6 = [[NSMutableDictionary alloc] init];
  [video6 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video6 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video7 = [[NSMutableDictionary alloc] init];
  [video7 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video7 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video8 = [[NSMutableDictionary alloc] init];
  [video8 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video8 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video9 = [[NSMutableDictionary alloc] init];
  [video9 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video9 setValue:@"2" forKey:@"videotype"];

  NSMutableDictionary *video10 = [[NSMutableDictionary alloc] init];
  [video10 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video10 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video11 = [[NSMutableDictionary alloc] init];
  [video11 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video11 setValue:@"2" forKey:@"videotype"];

  NSMutableDictionary *video12 = [[NSMutableDictionary alloc] init];
  [video12 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video12 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video13 = [[NSMutableDictionary alloc] init];
  [video13 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video13 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video14 = [[NSMutableDictionary alloc] init];
  [video14 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video14 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video15 = [[NSMutableDictionary alloc] init];
  [video15 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video15 setValue:@"2" forKey:@"videotype"];

  NSMutableDictionary *video16 = [[NSMutableDictionary alloc] init];
  [video16 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video16 setValue:@"1" forKey:@"videotype"];

  NSMutableDictionary *video17 = [[NSMutableDictionary alloc] init];
  [video17 setValue:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" forKey:@"videourl"];
  [video17 setValue:@"1" forKey:@"videotype"];

  [self.videoObjectArray addObject:video1];
  [self.videoObjectArray addObject:video2];
  [self.videoObjectArray addObject:video3];
  [self.videoObjectArray addObject:video4];
  [self.videoObjectArray addObject:video5];
  [self.videoObjectArray addObject:video6];
  [self.videoObjectArray addObject:video7];
  [self.videoObjectArray addObject:video8];
  [self.videoObjectArray addObject:video9];
  [self.videoObjectArray addObject:video10];
  [self.videoObjectArray addObject:video11];
  [self.videoObjectArray addObject:video12];
  [self.videoObjectArray addObject:video13];
  [self.videoObjectArray addObject:video14];
  [self.videoObjectArray addObject:video15];
  [self.videoObjectArray addObject:video16];
  [self.videoObjectArray addObject:video17];
}



#pragma mark -  ---------- IBAction selector target methods.

#pragma mark -  createUserAccountButtonTapped method.
- (IBAction)logoutButtonTapped:(id)sender{
  [self.navigationController popToRootViewControllerAnimated:true];
}




#pragma mark -  ---------- UICollectionView DataSource and Delegate methods.

#pragma mark -  numberOfItemsInSection method.
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return [self.videoObjectArray count];
}

#pragma mark -  cellForItemAtIndexPath method.
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
  static NSString *identifier = @"Cell";
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
  
  UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
  NSString *imageName = @"";
  
  NSMutableDictionary *video = [self.videoObjectArray objectAtIndex:indexPath.item];
  if (self.userType == Logged){
    imageName = @"active";
  }
  else{
    NSString *videoType = [video valueForKey:@"videotype"];
    if ([videoType isEqualToString:@"1"]){
      imageName = @"active";
    }
    else{
      imageName = @"inactive";
    }
  }
  
  recipeImageView.image = [UIImage imageNamed:imageName];
  return cell;
}

#pragma mark -  collectionView didSelectItemAtIndexPath method.
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
  BOOL videoStatus;
  
  NSMutableDictionary *video = [self.videoObjectArray objectAtIndex:indexPath.item];
  if (self.userType == Logged){
    videoStatus = true;
  }
  else{
    NSString *videoType = [video valueForKey:@"videotype"];
    if ([videoType isEqualToString:@"1"]){
      videoStatus = true;
    }
    else{
      videoStatus = false;
    }
  }

  if (videoStatus == true){
    NSString *videoUrl = [video valueForKey:@"videourl"];

    // remote file from server:
    NSURL *url = [[NSURL alloc] initWithString:videoUrl];
    
    // create a player view controller
    AVPlayer *player = [AVPlayer playerWithURL:url];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    
    controller.player = player;
    [self presentViewController:controller animated:YES completion:nil];
    controller.view.frame = self.view.frame;
    [controller.player play];
  }
  else{
    [self showAlertWith:@"You must have to login to play this video"];
  }
}


#pragma mark -  memory management method.
- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
