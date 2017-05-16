//
//  CoreDataManager.h
//  CoreDataInObjectiveC
//
//  Created by Pardeep Kumar on 15/01/2017.
//  Copyright © 2017 Pardeep Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataManager : NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;

+ (CoreDataManager *) sharedInstance;

- (BOOL)validateUserFromLocalDatabaseBy:(NSString *)email andWithPassword:(NSString *)password;

- (BOOL)validateUniqueEmailFromLocalForNewAccountBy:(NSString *)email;

- (BOOL)createUserAccountBy: (NSString*)email AndPassword: (NSString*)password;

- (void)saveContext;

@end
