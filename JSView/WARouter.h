//
//  WARouter.h
//  JSView
//
//  Created by admin on 2021/11/22.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

typedef void(^RouterHandler)(BOOL isStart, id <WKURLSchemeTask> _Nonnull urlSchemeTask, NSDictionary * _Nonnull params);

NS_ASSUME_NONNULL_BEGIN

@interface WARouter : NSObject

- (void)registerPattern:(NSString *)pattern handle:(RouterHandler)handle;

@end

NS_ASSUME_NONNULL_END
