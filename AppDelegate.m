//
//  AppDelegate.m
//  Test
//
//  Created by Shraddha Arora on 21/07/23.
//
#import <Cocoa/Cocoa.h>
#include <ServiceManagement/ServiceManagement.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Register for launch on login notifications
}

- (void)enableLaunchOnLogin {
    SMAppService *appService = [[SMAppService alloc] init];
    
    // Call the instance method 'registerAndReturnError:'
    NSError *enableError = nil;
    BOOL launchOnLoginEnable = [appService registerAndReturnError:&enableError];
    
    // Handle the return value and potential error
    if (launchOnLoginEnable) {
        NSLog(@"Added to login items!");
    } else {
        NSLog(@"Enabling failed with error: %@", enableError);
    }
}

- (void)disableLaunchOnLogin {
    SMAppService *appService = [[SMAppService alloc] init];
    
    // Call the instance method 'registerAndReturnError:'
    NSError *disableError = nil;
    BOOL launchOnLoginDisable = [appService unregisterAndReturnError:&disableError];
    
    // Handle the return value and potential error
    if (launchOnLoginDisable) {
        NSLog(@"Removed from login items!");
    } else {
        NSLog(@"Disabling failed with error: %@", disableError);
    }
}

// Other methods in AppDelegate

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
