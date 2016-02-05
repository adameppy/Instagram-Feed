//
//  PhotoDetailsViewController.swift
//  Instagram Feed
//
//  Created by Labuser on 2/4/16.
//  Copyright © 2016 wustl. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    var photo: NSDictionary!

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var profilePhotoView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let images = photo["images"] as! NSDictionary
        let resolution = images["standard_resolution"] as! NSDictionary
        let photoURL = resolution["url"] as! String
        
        let user = photo["user"] as! NSDictionary
        let user_pic = user["profile_picture"] as! String
        
        let profileURL = NSURL(string: user_pic)
        let imageURL = NSURL(string: photoURL)
        photoView.setImageWithURL(imageURL!)
        profilePhotoView.setImageWithURL(profileURL!)
        usernameLabel.text = user["username"] as! String
        let captionInfo = photo["caption"] as! NSDictionary
        let caption = captionInfo["text"] as! String
        captionLabel.text = caption 
        
        

        

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
