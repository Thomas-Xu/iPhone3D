#import "AppDelegate.h"

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (UIApplication*) application
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    UIViewController *RootVC = [[UIViewController alloc] init];
    [RootVC.view setFrame:screenBounds];
    
    m_window = [[UIWindow alloc] initWithFrame: screenBounds];
    m_view = [[GLView alloc] initWithFrame: screenBounds];
    
    m_window.rootViewController = RootVC;
    
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
