//
//  WARouter.m
//  JSView
//
//  Created by admin on 2021/11/22.
//

#import "WARouter.h"


@interface WARouter ()<WKURLSchemeHandler>

@property (nonatomic, strong) NSMutableDictionary *routers;

@end

@implementation WARouter

- (NSMutableDictionary *)routers
{
    if (_routers == nil)
    {
        _routers = [[NSMutableDictionary alloc] init];
    }
    return _routers;
}


- (void)registerPattern:(NSString *)pattern handle:(RouterHandler)handle
{
    [self.routers setValue:[handle copy] forKey:pattern];
}

- (void)webView:(WKWebView *)webView startURLSchemeTask:(id <WKURLSchemeTask>)urlSchemeTask
{
    NSURL *url = urlSchemeTask.request.URL;
    
    NSString *scheme = url.scheme;
    
    NSArray *pairs = [url.query componentsSeparatedByString:@"&"];
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *str in pairs)
    {
        NSArray *pair = [str componentsSeparatedByString:@"="];
        [params setValue:[pair lastObject] forKey:[pair firstObject]];
    }
    
    [params addEntriesFromDictionary:urlSchemeTask.request.allHTTPHeaderFields];
    
    RouterHandler handler = [self.routers objectForKey:scheme];
    
    handler(YES, urlSchemeTask, params);
    
}

- (void)webView:(WKWebView *)webView stopURLSchemeTask:(id <WKURLSchemeTask>)urlSchemeTask
{
    NSURL *url = urlSchemeTask.request.URL;
    
    NSString *scheme = url.scheme;
    
    NSArray *pairs = [url.query componentsSeparatedByString:@"&"];
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *str in pairs)
    {
        NSArray *pair = [str componentsSeparatedByString:@"="];
        [params setValue:[pair lastObject] forKey:[pair firstObject]];
    }
    
    [params addEntriesFromDictionary:urlSchemeTask.request.allHTTPHeaderFields];
    
    RouterHandler handler = [self.routers objectForKey:scheme];
    
    handler(NO, urlSchemeTask, params);
}


@end
