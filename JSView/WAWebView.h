//
//  WAWebView.h
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import <UIKit/UIKit.h>
#import "WAScriptProcesser.h"
#import "WAUIProcesser.h"
#import "WARequestProcesser.h"

typedef NS_ENUM(NSUInteger, WAWebType) {
    WebSimple,
    WebVideo,
    WebDownload,
    WebJS,
};

NS_ASSUME_NONNULL_BEGIN

@interface WAWebView : UIView
@property (nonatomic, strong) WAScriptProcesser *scriptProcesser;
@property (nonatomic, strong) WAUIProcesser *uiProcesser;
@property (nonatomic, strong) WARequestProcesser *requestProcesser;

- (instancetype)initWithType:(WAWebType)type;

@end

NS_ASSUME_NONNULL_END
