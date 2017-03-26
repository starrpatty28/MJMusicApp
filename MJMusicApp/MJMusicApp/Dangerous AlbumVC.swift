//
//  Dangerous AlbumVC.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/25/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit
import AVFoundation
class Dangerous_AlbumVC: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "blackorwhite", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func youtubeBtnClkd(_ sender: Any) {
        openURL(url: "https://www.youtube.com/watch?v=8IQS_8y-si0&index=4&list=PL15ty5GYCv5u0_w7pusvZtUP225slLmRT")
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
    
    @IBAction func tapToPreview(_ sender: Any) {
        audioPlayer.play()
    }

}
