//
//  AppDelegate.h
//  tracking2
//
//  Created by Michele Maffei on 27/05/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

