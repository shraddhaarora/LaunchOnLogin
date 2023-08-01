//
//  main.m
//  Test
//
//  Created by Shraddha Arora on 21/07/23.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
#import <ServiceManagement/ServiceManagement.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize the app delegate
            AppDelegate *appDelegate = [[AppDelegate alloc] init];
                
                // Call the function from the AppDelegate to register the app with SMAppService
            [appDelegate enableLaunchOnLogin];
        }
    return NSApplicationMain(argc, argv);;
}
