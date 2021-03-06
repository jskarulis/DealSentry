//
//  AppDelegate.h
//  DealSentry
//
//  Created by Joseph Skarulis on 10/29/15.
//  Copyright © 2015 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UIWindow *window;

// The app UI will be a split view layout with multi items (Deals,Companies,Contacts) in the left side table view
// and details of the selected item on the right side
//@property (strong, nonatomic) UISplitViewController *splitViewController;

// The app UI will keep track of the device's current orientation
//@property (strong, nonatomic) NSString *currentOrientation;

// The app will maintain the user identifier currently signed into the app
//@property (strong, nonatomic) NSString *userId;

// The CoreData persistence layer manager singleton for all the UI view controllers
//@property (strong, nonatomic) DataManager *dataManager;

// The View State Manager singleton for all the UI view controllers
//@property (strong, nonatomic) ViewStateManager *viewStateManager;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end