//
//  WARequestProcesser.m
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import "WARequestProcesser.h"
#import <WebKit/WebKit.h>

@interface WARequestProcesser ()<WKDownloadDelegate,WKHTTPCookieStoreObserver>

@end

@implementation WARequestProcesser

- (void)download:(WKDownload *)download decideDestinationUsingResponse:(NSURLResponse *)response suggestedFilename:(NSString *)suggestedFilename completionHandler:(void (^)(NSURL * _Nullable destination))completionHandler
{
    
}

- (void)download:(WKDownload *)download willPerformHTTPRedirection:(NSHTTPURLResponse *)response newRequest:(NSURLRequest *)request decisionHandler:(void (^)(WKDownloadRedirectPolicy))decisionHandler
{
    
}

- (void)download:(WKDownload *)download didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler
{
    
}

- (void)downloadDidFinish:(WKDownload *)download
{
    
}

- (void)download:(WKDownload *)download didFailWithError:(NSError *)error resumeData:(nullable NSData *)resumeData
{
    
}


@end
