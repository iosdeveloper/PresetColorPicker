//
//  PresetColorPickerAppDelegate.m
//  Created by http://github.com/iosdeveloper
//

#import "PresetColorPickerAppDelegate.h"
#import "PresetColorPickerViewController.h"

@implementation PresetColorPickerAppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    [viewController release];
	
    [window release];
	
    [super dealloc];
}

@end