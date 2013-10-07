
#import "MobileApps4TourismAppDelegate.h"

@implementation MobileApps4TourismAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    AttractionListISController *attractionListISController = [[AttractionListISController alloc] init];
    self.navigationController = [[UINavigationController alloc]initWithRootViewController:attractionListISController];
    [self.window setRootViewController:self.navigationController];
   [self.window makeKeyAndVisible];
    return YES;
}
@end
