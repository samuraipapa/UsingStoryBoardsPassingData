//
//  PhotosTableViewController.swift
//  UsingStoryBoardsPassingData
//
//  Created by GrownYoda on 3/30/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {

    var photos = [Photo]()  //new array of Photos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        println("hello");
        
        var newPhoto = Photo()
        newPhoto.name = "Amy Apples"
        newPhoto.fileName = "front"
        newPhoto.notes = "This is the first picture and the descirption there of. "
        
        println("name = \(newPhoto.name!)")
        println("Real Name = \(newPhoto.realName)")

        photos.append(newPhoto)
        
        // 2
        var newPhoto2 = Photo()
        
        newPhoto2.name = "Becky Baseballs"
        newPhoto2.fileName = "back"
        newPhoto2.notes = "This is the second picture and the descirption there of. "

        photos.append(newPhoto2)

        
        // 3
        var newPhoto3 = Photo()
        newPhoto3.name = "Catty Catnaps"
        newPhoto3.fileName = "kit"
        newPhoto3.notes = "This is the third picture and the descirption there of. "
        photos.append(newPhoto3)

        println("photos[0]: \(photos[0].name) ")
        println("photos[1]: \(photos[1].name) ")
        println("photos[2]: \(photos[2].name) ")

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var currentPhoto = photos[indexPath.row]
            cell.textLabel?.text = currentPhoto.name
//        }
        
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
        
        var secondScene = segue.destinationViewController as DislpayViewController

        if let indexPath =  self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
    }


}
