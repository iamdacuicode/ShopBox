//
//  HomeViewController.swift
//  ShopBox
//
//  Created by goyoo on 15/6/23.
//  Copyright (c) 2015年 yfan. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    var productNameList = ["商品1", "商品2","商品3", "商品4","商品5", "商品6","商品1", "商品1","商品1", "商品10","商品11", "商品12"]
    
    @IBOutlet var homeTabView: UITableView!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.wd_applyAppNavStyle()
        //        self.slidingViewController()
        
        // check is first open app or not
        //        if UIManager.sharedManager.isFirstOpen {
        //            UIManager.sharedManager.jumpToWelcomeView()
        //            return
        //        }
        
        // check login or not
        if !UIManager.sharedManager.isLogin {
//            UIManager.sharedManager.jumpToLoginView()
//            return
        }
        
//        homeTabView.registerClass(HomeTableCell.self, forCellReuseIdentifier: Storyboard.CellReuseIdentifier)
//        homeTabView.registerNib(UINib(nibName: <#String#>, bundle: <#NSBundle?#>)), forCellReuseIdentifier: <#String#>)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadData()
        
    }

    func loadData(){
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return productNameList.count
    }

    private struct Storyboard {
        static let CellReuseIdentifier = "MyCell"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier : String = "MyCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Storyboard.CellReuseIdentifier, forIndexPath: indexPath) as!HomeTableCell
        
        cell.titleLab.text = productNameList[indexPath.row]
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        //test
//        if segue.identifier == "showDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow() {
//                let object : NSDictionary = listVideos[indexPath.row] as NSDictionary
//                (segue.destinationViewController as JieDetailViewController).detailItem = object
//            }
//        }
    }
    

}
