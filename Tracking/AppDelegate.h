//
//  AppDelegate.h
//  Tracking
//
//  Created by Michele Maffei on 31/03/17.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

