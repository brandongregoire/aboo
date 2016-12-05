//
//  UISignUpSteps.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-25.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class UISignUpSteps: UIViewController {

    @IBOutlet var signUpStepSV: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let step1: Step1 = Step1(nibName: "Step1", bundle: nil)
        let step2: Step2 = Step2(nibName: "Step2", bundle: nil)
        let step3: Step3 = Step3(nibName: "Step3", bundle: nil)
        let step4: Step4 = Step4(nibName: "Step4", bundle: nil)
        
        self.addChildViewController(step1)
        self.signUpStepSV.addSubview(step1.view)
        step1.didMove(toParentViewController: self)
        
        self.addChildViewController(step2)
        self.signUpStepSV.addSubview(step2.view)
        step2.didMove(toParentViewController: self)
        
        self.addChildViewController(step3)
        self.signUpStepSV.addSubview(step3.view)
        step3.didMove(toParentViewController: self)
        
        self.addChildViewController(step4)
        self.signUpStepSV.addSubview(step4.view)
        step4.didMove(toParentViewController: self)
        
        var step2Frame: CGRect = step2.view.frame
        step2Frame.origin.x = self.view.frame.width
        step2.view.frame = step2Frame
        
        var step3Frame: CGRect = step3.view.frame
        step3Frame.origin.x = 2 * self.view.frame.width
        step3.view.frame = step3Frame
        
        var step4Frame: CGRect = step4.view.frame
        step4Frame.origin.x = 3 * self.view.frame.width
        step4.view.frame = step4Frame
        
        self.signUpStepSV.contentSize = CGSize(width: self.view.frame.width * 4, height: self.view.frame.height)
    }

}
