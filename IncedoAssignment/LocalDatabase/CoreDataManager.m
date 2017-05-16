//
//  CoreDataManager.m
//  CoreDataInObjectiveC
//
//  Created by Pardeep Kumar on 15/01/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import "CoreDataManager.h"

@implementation CoreDataManager
@synthesize persistentContainer = _persistentContainer;
static CoreDataManager *instance = nil;


#pragma mark -  ---------- Singleton design stack methods.

#pragma mark -  sharedInstance class method.
+ (CoreDataManager*) sharedInstance{
  return [self new];
}

#pragma mark -  allocWithZone overrided NSObject method.
+ (id)allocWithZone:(struct _NSZone *)zone{
  static dispatch_once_t onceToken = 0;
  dispatch_once(&onceToken, ^{
    
    instance = [super allocWithZone:nil];
  });
  return instance;
}

#pragma mark -  init overrided NSObject method.
- (id)init{
  static dispatch_once_t onceToken = 0;
  dispatch_once(&onceToken, ^{
    
    instance = [super init];
    _persistentContainer = [self persistentContainer];
  });
  return self;
}




#pragma mark -  ---------- Core Data stack methods.

#pragma mark -  persistentContainer method.
- (NSPersistentContainer *)persistentContainer {
  // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
  @synchronized (self) {
    if (_persistentContainer == nil) {
      _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"IncedoAssignment"];
      
      [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
        if (error != nil) {
          // Replace this implementation with code to handle the error appropriately.
          // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
          
          /*
           Typical reasons for an error here include:
           * The parent directory does not exist, cannot be created, or disallows writing.
           * The persistent store is not accessible, due to permissions or data protection when the device is locked.
           * The device is out of space.
           * The store could not be migrated to the current model version.
           Check the error message to determine what the actual problem was.
           */
          NSLog(@"Unresolved error %@, %@", error, error.userInfo);
          abort();
        }
      }];
    }
  }
  
  return _persistentContainer;
}

#pragma mark - Core Data Saving support

#pragma mark -  saveContext method.
- (void)saveContext {
  NSManagedObjectContext *context = self.persistentContainer.viewContext;
  NSError *error = nil;
  if ([context hasChanges] && ![context save:&error]) {
    // Replace this implementation with code to handle the error appropriately.
    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
    abort();
  }
}






#pragma mark -  ---------- Core Data Operations methods.

#pragma mark -  validateUserLoginFromLocalDatabaseBy method.
- (BOOL)validateUserFromLocalDatabaseBy:(NSString *)email andWithPassword:(NSString *)password{
  BOOL validateFlag;
  NSMutableArray *userRecords = [[NSMutableArray alloc] init];
  
  // Fetch the Employee from persistent data store
  NSManagedObjectContext *managedObjectContext = self.persistentContainer.viewContext;
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"User"];
  NSPredicate *predicate = [NSPredicate predicateWithFormat:@"email == %@ && password == %@", email, password];
  [fetchRequest setPredicate:predicate];
  
  userRecords = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
  if ([userRecords count] > 0){
    validateFlag = true;
  }
  else{
    validateFlag = false;
  }
  return validateFlag;
}

#pragma mark -  validateUserLoginFromLocalDatabaseBy method.
- (BOOL)validateUniqueEmailFromLocalForNewAccountBy:(NSString *)email{
  BOOL validateFlag;
  NSMutableArray *userRecords = [[NSMutableArray alloc] init];
  
  // Fetch the Employee from persistent data store
  NSManagedObjectContext *managedObjectContext = self.persistentContainer.viewContext;
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"User"];
  NSPredicate *predicate = [NSPredicate predicateWithFormat:@"email == %@", email];
  [fetchRequest setPredicate:predicate];
  
  userRecords = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
  if ([userRecords count] > 0){
    validateFlag = true;
  }
  else{
    validateFlag = false;
  }
  return validateFlag;
}

#pragma mark -  createUserAccountBy email and password method.
- (BOOL)createUserAccountBy: (NSString*)email AndPassword: (NSString*)password{
  BOOL saveFlag = false;
  NSManagedObjectContext *context = self.persistentContainer.viewContext;
  
  // Create a new managed object
  NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:context];
  [newDevice setValue:email forKey:@"email"];
  [newDevice setValue:password forKey:@"password"];
  
  NSError *error = nil;
  // Save the object to persistent store
  if (![context save:&error]) {
    NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    saveFlag = false;
  }
  else{
    [self saveContext];
    saveFlag = true;
  }
  
  return saveFlag;
}


@end
