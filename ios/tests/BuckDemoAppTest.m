#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>

#import "AppDelegate.h"

@interface BuckDemoAppTest : XCTestCase
@end

@implementation BuckDemoAppTest

- (void)testHello {
  AppDelegate *appDelegate =
    (AppDelegate *)[[UIApplication sharedApplication] delegate];
  XCTAssertEqualObjects(
    @"Hello from Buck!",
    [appDelegate helloString],
    @"Greeting should come from cross-platform code");
}

@end
