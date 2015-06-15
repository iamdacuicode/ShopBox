//
//  UIManager.swift
//  app-ui-ios-swift
//
//  Created by Wayne on 15/6/11.
//  Copyright (c) 2015年 Goyoo Inc. All rights reserved.
//

import UIKit

class UIManager : NSObject {
    static let sharedInstance = UIManager()
    class var sharedManager : UIManager {
        return sharedInstance
    }
    
    var window: UIWindow?
    
    // is login 
    var isLogin: Bool = false
    
    // first open
    var isFirstOpen: Bool = false
    
    func jumpToLoginView() {
        let loginStory = UIStoryboard(name: "Login", bundle: nil)
        let view = loginStory.instantiateInitialViewController() as! UINavigationController
        view.navigationBar.wd_applyAppNavStyle()
        
        window?.rootViewController = view
    }
    
    func jumpToHomePage() {
        let mainStory = UIStoryboard(name: "Main", bundle: nil)
//        let view = mainStory.instantiateInitialViewController() as! ECSlidingViewController
        
//        window?.rootViewController = view
    }
    
    func jumpToWelcomeView() {
//        let view = WelcomeViewController()
//        window?.rootViewController = view
    }
}
