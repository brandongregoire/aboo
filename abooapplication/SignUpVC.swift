//
//  SignUpVC.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-24.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBAction func canelSignUp(_ sender: Any) {
        performSegue(withIdentifier: "goToLogInVC", sender: self)
    }
    
    @IBAction func startSignUp(_ sender: Any) {
        performSegue(withIdentifier: "goToName", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
