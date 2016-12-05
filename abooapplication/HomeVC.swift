//
//  ViewController.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-24.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var homeScrollView: UIScrollView!
    
    @IBAction func logInBtn(_ sender: Any) {
        performSegue(withIdentifier: "goToLogInVC", sender: self)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1: View1 = View1(nibName: "View1", bundle: nil)
        let v2: View2 = View2(nibName: "View2", bundle: nil)
        let v3: View3 = View3(nibName: "View3", bundle: nil)
        let v4: View4 = View4(nibName: "View4", bundle: nil)
        
        self.addChildViewController(v1)
        self.homeScrollView.addSubview(v1.view)
        v1.didMove(toParentViewController: self)
        
        self.addChildViewController(v2)
        self.homeScrollView.addSubview(v2.view)
        v2.didMove(toParentViewController: self)
        
        self.addChildViewController(v3)
        self.homeScrollView.addSubview(v3.view)
        v3.didMove(toParentViewController: self)
        
        self.addChildViewController(v4)
        self.homeScrollView.addSubview(v4.view)
        v4.didMove(toParentViewController: self)
        
        var v2Frame: CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        var v3Frame: CGRect = v3.view.frame
        v3Frame.origin.x = 2 * self.view.frame.width
        v3.view.frame = v3Frame
        
        var v4Frame: CGRect = v4.view.frame
        v4Frame.origin.x = 3 * self.view.frame.width
        v4.view.frame = v4Frame
        
        self.homeScrollView.contentSize = CGSize(width: self.view.frame.width * 4, height: self.view.frame.height)
        
    }
    


}

