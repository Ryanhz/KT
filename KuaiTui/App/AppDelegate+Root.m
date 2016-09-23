//
//  AppDelegate+RootVCHelper.m
//  KuaiTui
//
//  Created by hzf on 16/9/7.
//  Copyright © 2016年 neitui. All rights reserved.
//

#import "AppDelegate+RootVCHelper.h"

@implementation AppDelegate (Root)


- (void)initRootVCHelper {
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(changeRootVC:)
                                                 name:kNotification_RootVCChange
                                               object:nil];
}


- (void)changeRootVC:(NSNotification *)notification {
    DLog(@"%@", notification);
    NSDictionary *object = notification.object;
    
    switch ([object[kRootTypeKey] integerValue]) {
        case KTRootViewControllerType_login:
        {
            [self loginAsRootVC];
        }
            break;
            
        case KTRootViewControllerType_Candidate:
        {
            [self candidateAsRootVC];
        }
            break;
        case KTRootViewControllerType_Company:
        {
            [self companyAsRootVC];
        }
            break;
        case KTRootViewControllerType_Counselor:
        {
            [self counselorAsRootVC];
        }
            break;
        default:
            break;
    }
}

- (void)loginAsRootVC {
    if (!self.loginNavtionController) {
        KTLoginViewController *loginVC = [[KTLoginViewController alloc] init];
        self.loginNavtionController = [[UINavigationController alloc]initWithRootViewController:loginVC];
    }
    
    if (!self.window.rootViewController) {
        self.window.rootViewController = self.loginNavtionController;
        return;
    }
    
}

- (void)candidateAsRootVC {
    if (!self.candidateTBController) {
        self.candidateTBController = [[KTCandidate_TabBarController alloc]init];
    }
    
    if (!self.window.rootViewController) {
        self.window.rootViewController = self.candidateTBController;
        return;
    }
    
}

- (void)companyAsRootVC {
    
}

- (void)counselorAsRootVC  {
    
}


@end
