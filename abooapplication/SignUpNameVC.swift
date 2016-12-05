//
//  SignUpNameVC.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-12-03.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class SignUpNameVC: UIViewController {
    
    var authService = AuthService()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backToSignUp(_ sender: Any) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    

}
