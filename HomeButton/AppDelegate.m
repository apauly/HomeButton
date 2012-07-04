//
//  AppDelegate.m
//  HomeButton
//
//  Created by Alexander Pauly on 04.07.12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound]; 
    
    for (UILocalNotification *oldNotification in [[UIApplication sharedApplication] scheduledLocalNotifications]) {
        [[UIApplication sharedApplication] cancelLocalNotification:oldNotification];
    }
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    [notification setAlertBody:@"Touch to simulate HomeButton"];
    [notification setFireDate:[[NSDate date] dateByAddingTimeInterval:10]];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
    exit(0);
    
    return YES;
}

@end
