#import <Foundation/Foundation.h>

#if TARGET_OS_IOS
#    import <UIKit/UIKit.h>
#endif

@interface SentrySystemEventBreadcrumbs : NSObject

- (void)start;

#if TARGET_OS_IOS
- (void)start:(UIDevice *)currentDevice;
#endif

- (void)stop;

@end
