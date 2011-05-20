//
//  PresetColorPicker.h
//  Created by http://github.com/iosdeveloper
//

#import <UIKit/UIKit.h>

@protocol PresetColorPickerDelegate;

@interface PresetColorPicker : UITableViewController {
	NSArray *presetColors;
	
	id <PresetColorPickerDelegate> delegate;
}

@property (retain, readwrite) NSArray *presetColors;

@property (nonatomic, assign) id delegate;

@end

@protocol PresetColorPickerDelegate <NSObject>
- (void)colorSelected:(UIColor *)color;
@end