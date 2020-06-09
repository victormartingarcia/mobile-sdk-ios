//
//  AppDelegate.m
//
//  Copyright © 2020 Jumio Corporation All rights reserved.
//

#import "AppDelegate.h"
@import JumioCore;
@import NetverifyFace;
@import Netverify;
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self jumioCustomUI];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) jumioCustomUI{
  // NavigationBar tintColor
  [[UINavigationBar jumioAppearance] setTintColor: RGBA(255,255,255,1)];
  // NavigationBar barTintColor
  [[UINavigationBar jumioAppearance] setBarTintColor: RGBA(0,0,0,1)];
  // NavigationBar textTitleColor
  [[UINavigationBar jumioAppearance] setTitleTextAttributes: @{NSForegroundColorAttributeName:RGBA(255,255,255,1)}];


  // General appearance - deactivate blur
  [[NetverifyBaseView jumioAppearance] setDisableBlur: @YES];

  // General appearance - background color
  [[NetverifyBaseView jumioAppearance] setBackgroundColor: RGBA(0,0,0,1)];

  // General appearance - foreground color
  [[NetverifyBaseView jumioAppearance] setForegroundColor: RGBA(255,255,255,1)];

  // Document Selection Button (State: Normal) - Background Color
  [[NetverifyDocumentSelectionButton jumioAppearance] setBackgroundColor: RGBA(255,255,255,0.11) forState:UIControlStateNormal];

  // Document Selection Button (State: Normal) - Icon Color
  [[NetverifyDocumentSelectionButton jumioAppearance] setIconColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Document Selection Button (State: Normal) - Title Color
  [[NetverifyDocumentSelectionButton jumioAppearance] setTitleColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Document Selection Header (State: Normal) - Background Color
  [[NetverifyDocumentSelectionHeaderView jumioAppearance] setBackgroundColor: RGBA(255,255,255,0.14)];

  // Document Selection Header (State: Normal) - Icon Color
  [[NetverifyDocumentSelectionHeaderView jumioAppearance] setIconColor: RGBA(255,255,255,1)];

  // Document Selection Header (State: Normal) - Title Color
  [[NetverifyDocumentSelectionHeaderView jumioAppearance] setTitleColor: RGBA(255,255,255,1)];

  // Positive Button - Background Color
  [[NetverifyPositiveButton jumioAppearance] setBackgroundColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Positive Button - Border Color
  [[NetverifyPositiveButton jumioAppearance] setBorderColor: RGBA(255,255,255,0)];

  // Positive Button - Title Color
  [[NetverifyPositiveButton jumioAppearance] setTitleColor: RGBA(0,0,0,1) forState:UIControlStateNormal];

  // Negative Button - Border Color
  [[NetverifyNegativeButton jumioAppearance] setBorderColor: RGBA(255,255,255,1)];

  // Negative Button - Title Color
  [[NetverifyNegativeButton jumioAppearance] setTitleColor: RGBA(0,0,0,1) forState:UIControlStateNormal];

  // Fallback Button Background Color
  [[NetverifyFallbackButton jumioAppearance] setBackgroundColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Fallback Button Border Color
  [[NetverifyFallbackButton jumioAppearance] setBorderColor: RGBA(0,0,0,0)];

  // Color Overlay Standard Color
  [[NetverifyScanOverlayView jumioAppearance] setColorOverlayStandard: RGBA(255,255,255,1)];

  // Color Overlay Fill Color
  [[NetverifyScanOverlayView jumioAppearance] setColorOverlayFill: RGBA(0,0,0,0.63)];

  // Face Feedback Background Color
  [[NetverifyScanOverlayView jumioAppearance] setFaceFeedbackBackgroundColor: RGBA(57,57,57,1)];

  // Face Oval Color
  [[NetverifyScanOverlayView jumioAppearance] setFaceOvalColor: RGBA(255,255,255,1)];

  // NavigationBar tintColor
  [[UINavigationBar jumioAppearance] setTintColor: RGBA(255,255,255,1)];

  // NavigationBar barTintColor
  [[UINavigationBar jumioAppearance] setBarTintColor: RGBA(0,0,0,1)];

  // NavigationBar textTitleColor
  [[UINavigationBar jumioAppearance] setTitleTextAttributes: @{NSForegroundColorAttributeName:RGBA(255,255,255,1)}];

  // General appearance - deactivate blur
  [[JumioBaseView jumioAppearance] setDisableBlur: @YES];

  // General appearance - background color
  [[JumioBaseView jumioAppearance] setBackgroundColor: RGBA(0,0,0,1)];

  // General appearance - foreground color
  [[JumioBaseView jumioAppearance] setForegroundColor: RGBA(255,255,255,1)];

  // Positive Button - Background Color
  [[JumioPositiveButton jumioAppearance] setBackgroundColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Positive Button - Border Color
  [[JumioPositiveButton jumioAppearance] setBorderColor: RGBA(255,255,255,0)];

  // Positive Button - Title Color
  [[JumioPositiveButton jumioAppearance] setTitleColor: RGBA(0,0,0,1) forState:UIControlStateNormal];

  // Negative Button - Border Color
  [[JumioNegativeButton jumioAppearance] setBorderColor: RGBA(255,255,255,1)];

  // Negative Button - Title Color
  [[JumioNegativeButton jumioAppearance] setTitleColor: RGBA(255,255,255,1) forState:UIControlStateNormal];

  // Face Feedback Background Color
  [[JumioScanOverlayView jumioAppearance] setFaceFeedbackBackgroundColor: RGBA(57,57,57,1)];

  // Face Oval Color
  [[JumioScanOverlayView jumioAppearance] setFaceOvalColor: RGBA(255,255,255,1)];
}

@end
