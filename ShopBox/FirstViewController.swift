//
//  FirstViewController.swift
//  ShopBox
//
//  Created by goyoo on 15/6/15.
//  Copyright (c) 2015年 yfan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.navigationBar.wd_applyAppNavStyle()
//        self.slidingViewController()
        
        // check is first open app or not
//        if UIManager.sharedManager.isFirstOpen {
//            UIManager.sharedManager.jumpToWelcomeView()
//            return
//        }
        
        // check login or not
        if !UIManager.sharedManager.isLogin {
            UIManager.sharedManager.jumpToLoginView()
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

