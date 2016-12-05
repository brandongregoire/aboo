//
//  logInVC.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-24.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class logInVC: UIViewController {
    @IBAction func cancelLogIn(_ sender: Any) {
        performSegue(withIdentifier: "cancelToLogIn", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

}
