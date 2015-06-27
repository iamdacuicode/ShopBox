//
//  ProductInfoViewController.swift
//  ShopBox
//
//  Created by goyoo on 15/6/27.
//  Copyright (c) 2015年 yfan. All rights reserved.
//

import UIKit

class ProductInfoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var req = NSURLRequest(URL: NSURL(string: "https://www.baidu.com")!)
        webView.loadRequest(req)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
