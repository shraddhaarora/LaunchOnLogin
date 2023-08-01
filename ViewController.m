//
//  ViewController.m
//  Test
//
//  Created by Shraddha Arora on 21/07/23.
//

#import "ViewController.h"
#import "AppDelegate.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the button
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(50, 50, 100, 30)];
    [button setTitle:@"Click Me"];
    [button setButtonType:NSButtonTypeMomentaryPushIn];
    [button setBezelStyle:NSBezelStyleRounded]; // You can choose a different style if you prefer
    
    // Add the button as a subview to the view
    [self.view addSubview:button];
    
    // Set the target and action for the button
    [button setTarget:self];
    [button setAction:@selector(buttonClicked:)];
}

- (void)buttonClicked:(id)sender {
    // Get a reference to the AppDelegate
    AppDelegate *appDelegate = (AppDelegate *)NSApplication.sharedApplication.delegate;
    // Call the buttonClicked method on the AppDelegate instance
    [appDelegate disableLaunchOnLogin];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
