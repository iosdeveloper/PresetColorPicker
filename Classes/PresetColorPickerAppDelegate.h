//
//  PresetColorPickerAppDelegate.h
//  Created by http://github.com/iosdeveloper
//

#import <UIKit/UIKit.h>

@class PresetColorPickerViewController;

@interface PresetColorPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
    PresetColorPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PresetColorPickerViewController *viewController;

@end