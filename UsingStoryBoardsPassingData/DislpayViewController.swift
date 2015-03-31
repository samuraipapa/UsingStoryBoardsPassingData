//
//  DislpayViewController.swift
//  UsingStoryBoardsPassingData
//
//  Created by GrownYoda on 3/30/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

import UIKit

class DislpayViewController: UIViewController {

    var currentPhoto = Photo()
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelNotes: UILabel!
    @IBOutlet weak var currentImage: UIImageView!
    
    @IBAction func buttonHit(sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
   
        //1
        
        // Last Section in Video
        var filename = currentPhoto.fileName
        var image = UIImage(named: filename! )
        currentImage.image = image
        
        
        // 2
        labelName.text = filename
        
        var notes = currentPhoto.notes
        labelNotes.text = notes
        
        
        // Do any additional setup after loading the view.
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
