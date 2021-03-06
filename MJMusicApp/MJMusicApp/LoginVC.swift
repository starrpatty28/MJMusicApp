//
//  ViewController.swift
//  MJMusicApp
//
//  Created by Noi-Ariella Baht Israel on 3/22/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var gifView: UIImageView!
    
    @IBOutlet weak var userNameTxtFld: UITextField!

    @IBOutlet weak var passWordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifView.loadGif(name: "200w_d")
        
        userNameTxtFld.delegate = self
        userNameTxtFld.tag = 0
        
        passWordTxtFld.delegate = self
        passWordTxtFld.tag = 0
        
        
    }
    
    func textFieldShouldReturn(_ userNameTxtField: UITextField) -> Bool
    {
        // Try to find next responder
        if let nextField = userNameTxtField.superview?.viewWithTag(userNameTxtField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard.
            userNameTxtField.resignFirstResponder()
        }
        // Do not add a line break
        return false
    }
    
    @nonobjc func passWordFieldShouldReturn(_ passWordTxtField: UITextField) -> Bool
    {
        // Try to find next responder
        if let nextField = passWordTxtField.superview?.viewWithTag(passWordTxtField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard.
            passWordTxtField.resignFirstResponder()
        }
        // Do not add a line break
        return false
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

