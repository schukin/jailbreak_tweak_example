/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.
*/

#import "activator.h"

%hook UIApplication

- (BOOL)canOpenURL:(NSURL *)url
{
	dispatch_async(dispatch_get_main_queue(), ^{
	NSString *title = [NSString stringWithFormat:@"canOpenURL: %@", url];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    });

    return YES;
}

%end