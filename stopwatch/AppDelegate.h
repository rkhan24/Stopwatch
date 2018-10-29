//
//  AppDelegate.h
//  stopwatch
//
//  Created by Rizwan Khan on 10/29/18.
//  Copyright © 2018 Rizwan Khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

