//
//  OffTheWallAlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/22/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class OffTheWallAlbumVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func youtubeBtnClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=yURRmWtbTbo&list=PLwDOvNcLFeCnKHrLy1lSWhiyFUfyT0TTD")
    }
    
    func openURL(url:String!) {
        if let url = NSURL(string:url) {
            UIApplication.shared.openURL(url as URL)
        }
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