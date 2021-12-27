//
//  JSViewController.m
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import "JSViewController.h"
#import <WebKit/WebKit.h>


@interface JSViewController ()<WKUIDelegate,WKDownloadDelegate,WKURLSchemeTask,WKURLSchemeHandler,WKNavigationDelegate,WKScriptMessageHandler,WKHTTPCookieStoreObserver,WKScriptMessageHandlerWithReply>

@property (nonatomic, strong) WKWebView *wkView;
@property (nonatomic, strong) WKWebViewConfiguration *wkConfig;
@end

@implementation JSViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)download:(nonnull WKDownload *)download decideDestinationUsingResponse:(nonnull NSURLResponse *)response suggestedFilename:(nonnull NSString *)suggestedFilename completionHandler:(nonnull void (^)(NSURL * _Nullable))completionHandler {
    
}

- (void)didFailWithError:(nonnull NSError *)error
{
    
}

- (void)didFinish
{
    
}

- (void)didReceiveData:(nonnull NSData *)data
{
    
}

- (void)didReceiveResponse:(nonnull NSURLResponse *)response {
    
}

- (void)webView:(nonnull WKWebView *)webView startURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask {
    
}

- (void)webView:(nonnull WKWebView *)webView stopURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask
{
    
}

- (void)userContentController:(nonnull WKUserContentController *)userContentController
      didReceiveScriptMessage:(nonnull WKScriptMessage *)message
{
    
}

- (void)userContentController:(nonnull WKUserContentController *)userContentController
      didReceiveScriptMessage:(nonnull WKScriptMessage *)message
                 replyHandler:(nonnull void (^)(id _Nullable, NSString * _Nullable))replyHandler
{
    
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container
{
    
}

//- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
//    <#code#>
//}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container
{
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator
{
    
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection
              withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator
{
    
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context
       withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator
{
    
}

- (void)setNeedsFocusUpdate
{
    
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context
{
    return YES;
}

- (void)updateFocusIfNeeded
{
    
}

@end
