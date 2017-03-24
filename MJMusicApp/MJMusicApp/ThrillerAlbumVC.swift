//
//  ThrillerAlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/22/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class ThrillerAlbumVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func youtubeClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=CZqM_PgQ7BM&list=PLDs_1K5H3Lco3c8l0IMj0ZpOARsaDuwj1")
    }
    
    func openURL(url:String!) {
        if let url = NSURL(string:url) {
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
