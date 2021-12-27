//
//  WAScriptProcesser.h
//  JSView
//
//  Created by admin on 2021/11/12.
//

#import <Foundation/Foundation.h>

@protocol WAExcuteScriptDelegate <NSObject>

- (void)excuteScript:(NSString *_Nonnull)script complition:(void (^ _Nullable)(_Nullable id, NSError * _Nullable error))complition;

@end

typedef void(^MessageHandle)(id _Nonnull body, NSString * _Nonnull name);

@class WKUserContentController;

NS_ASSUME_NONNULL_BEGIN

@interface WAScriptProcesser : NSObject

@property (nonatomic, weak) id<WAExcuteScriptDelegate> excuteDelegate;
@property (nonatomic, strong) WKUserContentController *userController;

// 脚本注入
- (void)addScript:(NSString *)script
             atStart:(BOOL)atStart
         isFrameMain:(BOOL)isFrameMain;

/** oc->js
 @param script 执行js中定义的函数 ：getName('name');
 @param complition 完成回调
 */
- (void)excuteScript:(NSString *)script complition:(void (^ _Nullable)(_Nullable id, NSError * _Nullable error))complition;
 
/** js->oc
 *  @param name ： 注册和  js 约定好的回调名称
 *  @param complition 回调
 */
- (void)registerHandleWithName:(NSString *)name complition:(MessageHandle)complition;
@end

NS_ASSUME_NONNULL_END
