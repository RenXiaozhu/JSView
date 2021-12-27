//
//  WAScriptProcesser.m
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import "WAScriptProcesser.h"
#import <WebKit/WebKit.h>


@interface WAScriptProcesser ()<WKScriptMessageHandlerWithReply,WKScriptMessageHandler>

@property (nonatomic, strong) NSMutableDictionary *handleDict;

@end



@implementation WAScriptProcesser

- (NSMutableDictionary *)handleDict
{
    if (_handleDict == nil)
    {
        _handleDict = [[NSMutableDictionary alloc] init];
    }
    return _handleDict;
}

- (WKUserContentController *)contentController
{
    if (_userController == nil)
    {
        _userController = [[WKUserContentController alloc] init];
    }
    return _userController;
}

- (void)addScript:(NSString *)script
             atStart:(BOOL)atStart
         isFrameMain:(BOOL)isFrameMain
{
    WKUserScript *userScript = [[WKUserScript alloc] initWithSource:script injectionTime:atStart?WKUserScriptInjectionTimeAtDocumentStart:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:isFrameMain];
    [self.userController addUserScript:userScript];
}

- (void)excuteScript:(NSString *)script complition:(void (^ _Nullable)(_Nullable id, NSError * _Nullable error))complition
{
    [self.excuteDelegate excuteScript:script complition:complition];
}

- (void)registerHandleWithName:(NSString *)name complition:(MessageHandle)complition
{
    [self.userController addScriptMessageHandler:self name:name];
    [self.handleDict setValue:[complition copy] forKey:name];
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message replyHandler:(void (^)(id _Nullable reply, NSString *_Nullable errorMessage))replyHandler
{
    
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    NSString *name = message.name;
    id body = message.body;
    MessageHandle block  = (MessageHandle)[self.handleDict objectForKey:name];
    if (block)
    {
        block(body, name);
    }
}

- (void)dealloc
{
    [_handleDict removeAllObjects];
    _handleDict = nil;
}


@end
