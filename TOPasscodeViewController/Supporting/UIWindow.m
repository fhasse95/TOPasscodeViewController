//
//  UIWindow.m
//  TOPasscodeViewController
//
//  Created by Fabian Hasse on 09.12.23.
//

#import <UIKit/UIKit.h>

@interface UIWindow (KeyWindow)

+ (UIWindow *)keyWindow;

@end

@implementation UIWindow (KeyWindow)

+ (UIWindow *)keyWindow {
    UIWindowScene *keyWindowScene = nil;
    for (UIScene *scene in [[UIApplication sharedApplication] connectedScenes]) {
        if ([scene isKindOfClass:[UIWindowScene class]]) {
            keyWindowScene = (UIWindowScene *)scene;
            break;
        }
    }
    
    if (keyWindowScene) {
        for (UIWindow *window in keyWindowScene.windows) {
            if (window.isKeyWindow) {
                return window;
            }
        }
    }
    
    return nil;
}

@end
