//
//  Extension.swift
//  app-ui-ios-swift
//
//  Created by Wayne on 15/6/9.
//  Copyright (c) 2015年 Goyoo Inc. All rights reserved.
//

import UIKit
//import AFNetworking
//import TSMessages

extension UINavigationBar {
    func wd_applyAppNavStyle() {
        self.barTintColor = Theme.appColor
        self.tintColor = UIColor.whiteColor()
        self.translucent = false
        
        // set title style
        self.titleTextAttributes = [
            NSFontAttributeName: UIFont.boldSystemFontOfSize(20),
            NSForegroundColorAttributeName: UIColor.whiteColor()
        ]
    }
}

extension UIImageView {
    func wd_appleShopLogoStyle() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 3
        self.clipsToBounds = true
    }
}

extension UITableView {
    func wd_hideEmptyView() {
        self.tableFooterView = UIView(frame: CGRectZero)
    }
}

//extension AFJSONRequestSerializer {
//    func wd_appleAppHeader() -> AFJSONRequestSerializer {
//        self.setValue("sid_", forHTTPHeaderField: "Session-Id")
//        self.setValue(Constants.app_version, forHTTPHeaderField: "Accept-Version")
//        
//        return self
//    }
//}

//extension TSMessage {
//    class func wd_showErrorMessage(replace: String, responseData: NSData) {
//        let errInfo = DataHandler.sharedHandler.errorInfoWithResponse(responseData)
//        
//        if errInfo.code != 0 {
//            TSMessage.showNotificationWithTitle(errInfo.message, type: .Error)
//        } else {
//            TSMessage.showNotificationWithTitle(replace, type: .Error)
//        }
//    }
//}
