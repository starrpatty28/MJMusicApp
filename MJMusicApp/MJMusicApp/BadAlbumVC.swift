//
//  BadAlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/22/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit
import AVFoundation

class BadAlbumVC: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "I'm Bad", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func youtubeBtnClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=yFvM7Olak2Y&list=PLDs_1K5H3LcoeB8VnXLsl3LwsbnP7LCgZ")
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
    
    @IBAction func playSong(_ sender: Any) {
        audioPlayer.play()
        
    }

}
