//
//  Invincible AlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/25/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit


class Invincible_AlbumVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func youtubeBtnClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=7hDon6okRn4&list=PLJNbijG2M7OwRVl3OHUvBRlCOk0dgxXeR")
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

    @IBAction func tapToPreviewBtn(_ sender: Any) {
    }
    
}
