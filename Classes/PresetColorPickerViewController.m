//
//  PresetColorPickerViewController.m
//  Created by http://github.com/iosdeveloper
//

#import "PresetColorPickerViewController.h"

@implementation PresetColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button addTarget:self action:@selector(selectColor) forControlEvents:UIControlEventTouchUpInside];
	[button setFrame:CGRectMake(0.0, 0.0, 320.0, 460.0)];
	[button setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
	[button setTag:100];
	[button setTitle:@"Select color" forState:UIControlStateNormal];
	[button setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
	
	[[self view] addSubview:button];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)selectColor {
	PresetColorPicker *colorPicker = [[PresetColorPicker alloc] init];
	[colorPicker setPresetColors:[NSArray arrayWithObjects:@"Black",
								  @"Dark Grey",
								  @"Light Grey",
								  @"Grey",
								  @"White",
								  @"Red",
								  @"Green",
								  @"Blue",
								  @"Cyan",
								  @"Yellow",
								  @"Magenta",
								  @"Orange",
								  @"Purple",
								  @"Brown",
								  @"Skyblue",
								  @"Lawngreen",
								  @"Chocolate",
								  [UIColor blackColor],
								  [UIColor darkGrayColor],
								  [UIColor lightGrayColor],
								  [UIColor grayColor],
								  [UIColor whiteColor],
								  [UIColor redColor],
								  [UIColor greenColor],
								  [UIColor blueColor],
								  [UIColor cyanColor],
								  [UIColor yellowColor],
								  [UIColor magentaColor],
								  [UIColor orangeColor],
								  [UIColor purpleColor],
								  [UIColor brownColor],
								  [UIColor colorWithRed:135.0 / 255.0 green:206.0 / 255.0 blue:235.0 / 255.0 alpha:1.0],
								  [UIColor colorWithHue:90.0 / 255.0 saturation:100.0 / 255.0 brightness:99.0 / 255.0 alpha:1.0],
								  [UIColor colorWithRed:210.0 / 255.0 green:105.0 / 255.0 blue:30.0 / 255.0 alpha:1.0], nil]];
	[colorPicker setDelegate:self];
	
	[self presentModalViewController:colorPicker animated:YES];
	
	[colorPicker release];
}

- (void)colorSelected:(UIColor *)color {
	[(UIButton *)[[self view] viewWithTag:100] setBackgroundColor:color];
}

@end