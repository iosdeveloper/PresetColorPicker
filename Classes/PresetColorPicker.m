//
//  PresetColorPicker.m
//  Created by http://github.com/iosdeveloper
//

#import "PresetColorPicker.h"

@implementation PresetColorPicker

@synthesize presetColors;
@synthesize delegate;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self tableView] setSeparatorStyle:UITableViewCellSeparatorStyleNone];
	[[self tableView] setBackgroundColor:[UIColor blackColor]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self presetColors] count] / 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    [[cell textLabel] setText:[[self presetColors] objectAtIndex:[indexPath row]]];
	[[cell textLabel] setTextColor:[UIColor whiteColor]];
	
	CGRect rect = CGRectMake(0.0, 0.0, 88.0, [tableView rowHeight]);
	
	UIGraphicsBeginImageContext(rect.size);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, [[[self presetColors] objectAtIndex:[[self presetColors] count] / 2 + [indexPath row]] CGColor]);
	
	CGContextFillRect(context, rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	[[cell imageView] setImage:image];
	[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [delegate colorSelected:[[self presetColors] objectAtIndex:[[self presetColors] count] / 2 + [indexPath row]]];
	
	[self dismissModalViewControllerAnimated:YES];
}

@end