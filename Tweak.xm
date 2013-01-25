#import <Foundation/Foundation.h>
#import <Security/Security.h>
#include <substrate.h>

/*
	Define the new SecTrustEvaluate function
*/
OSStatus new_SecTrustEvaluate(SecTrustRef trust, SecTrustResultType *result);
OSStatus new_SecTrustEvaluate(SecTrustRef trust, SecTrustResultType *result)
{
	NSLog(@"Intercepting SecTrustEvaluate Call");
	*result = kSecTrustResultProceed;
	return errSecSuccess;
}

/*
	Function signature for original SecTrustEvaluate
*/
static OSStatus(*original_SecTrustEvaluate)(SecTrustRef trust, SecTrustResultType *result);

/*
	Constructor that is called when Tweak is loaded
*/
__attribute__((constructor))
static void _MSInitialize(void) {
  NSLog(@"trustme: Loaded");

  NSLog(@"trustme: Hooking SecTrustEvaluate");
  MSHookFunction((void *)SecTrustEvaluate, (void *)new_SecTrustEvaluate, (void **)&original_SecTrustEvaluate);
}
