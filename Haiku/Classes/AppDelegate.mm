#import "AppDelegate.h"

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (UIApplication*) application
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    m_window = [[UIWindow alloc] initWithFrame: screenBounds];
    UIViewController *RootVC = [[UIViewController alloc] init];
    m_window.rootViewController = RootVC;
    
    m_view = [[GLView alloc] initWithFrame: screenBounds];
    [RootVC.view setFrame:screenBounds];
    [RootVC.view addSubview: m_view];
    [m_window makeKeyAndVisible];
}

- (void) dealloc
{
    [m_view release];
    [m_window release];
    [super dealloc];
}

@end
