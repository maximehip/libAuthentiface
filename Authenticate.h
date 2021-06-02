#import <LocalAuthentication/LocalAuthentication.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Authenticate : NSObject {
}

typedef void(^completion)(BOOL status);

-(void)authenticate:(NSString *)reason completed:(completion)completion;

@end