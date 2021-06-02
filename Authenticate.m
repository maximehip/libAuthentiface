#import "Authenticate.h"

@implementation Authenticate

-(void)authenticate:(NSString *)reason completed:(completion)completed {
	LAContext *laContext = [[LAContext alloc] init];
	NSError *error;

	if ([laContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
	    
	    if (error != NULL) {
	    	NSLog(@"[libAuthenticate] something is wrong..");
	    	completed(false);
	    } else { 
	        [laContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:reason reply:^(BOOL success, NSError * _Nullable error) {
	            
	            if (error != NULL) {
	                NSLog(@"[libAuthenticate] something is wrong..");
	                completed(false);
	            } else if (success) {
	                completed(true);
	            } else {
	                completed(false);
	            }
	        }];
	    }
	}
}

@end