//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Kaila Prochaska on 9/13/18.
//  Copyright © 2018 Kaila Prochaska. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var largePhotoImageView: UIImageView!
    
    var post: [String: Any]?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let post = post{ // this first post is the post with the information inside JSON stuff
            if let photos = post["photos"] as? [[String: Any]]{
                let photo = photos[0]
                let originalSize = photo["original_size"]  as! [String: Any]
                let stringURL = originalSize["url"] as! String
                let url = URL(string: stringURL)
                largePhotoImageView.af_setImage(withURL: url!)
            }
        }
       


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
