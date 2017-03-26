//
//  History AlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/25/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit
import AVFoundation

class History_AlbumVC: UIViewController {
    
    var audioPLayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            audioPLayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "theydontcare", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
        
    }
    
    @IBAction func youtubeBtnClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=8k1yj46xH24&list=PL15ty5GYCv5uDdbqMZNPVLeis1My2YV6O")
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
    
    @IBAction func playPreviewBtn(_ sender: Any) {
        audioPLayer.play()
        
    }


}
