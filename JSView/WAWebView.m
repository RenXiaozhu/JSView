//
//  WAWebView.m
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import "WAWebView.h"
#import <WebKit/WebKit.h>


@interface WAWebView ()

@property (nonatomic, strong) WKWebView *wkView;
@property (nonatomic, assign) WAWebType type;


@end

@implementation WAWebView

- (instancetype)initWithType:(WAWebType)type
{
    if (self = [super initWithFrame:CGRectZero])
    {
        self.type = type;
    }
    return self;
}

- (WKPreferences *)preference
{
    WKPreferences *pf = [[WKPreferences alloc] init];
    pf.minimumFontSize = 0;
    pf.javaScriptCanOpenWindowsAutomatically = NO;
    return pf;
}

- (WAScriptProcesser *)scriptProcesser
{
    if (_scriptProcesser == nil)
    {
        _scriptProcesser = [[WAScriptProcesser alloc] init];
    }
    return _scriptProcesser;
}

- (WKWebView *)wkView
{
    if (_wkView)
    {
        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
        config.suppressesIncrementalRendering = YES;
        config.preferences = [self preference];
        config.userContentController = self.scriptProcesser.userController;
        
        _wkView = [[WKWebView alloc] initWithFrame:self.bounds configuration:config];
        
        
    }
    return _wkView;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
    [self setupUI];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setupUIFrame];
}

- (void)setupUI
{
    [self addSubview:self.wkView];
}

- (void)setupUIFrame
{
    [self.wkView setFrame:self.bounds];
}

@end
