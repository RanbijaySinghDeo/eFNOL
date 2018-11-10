//
//  LoginScreenViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 02/08/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import QuartzCore

class LoginScreenViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var policyNumberTextField: UITextField!
    @IBOutlet weak var loginCardView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiChanges()
        // Do any additional setup after loading the view.
    }
    func uiChanges() {
        self.loginCardView.layer.cornerRadius = 8
        self.loginCardView.layer.borderWidth = 2
        self.loginCardView.layer.borderColor = UIColor.white.cgColor

        self.userNameTextField.layer.borderWidth = 1
        self.userNameTextField.layer.borderColor = UIColor.white.cgColor
        self.userNameTextField.layer.cornerRadius = 8
        
        self.passwordTextField.layer.borderWidth = 1
        self.passwordTextField.layer.borderColor = UIColor.white.cgColor
        self.passwordTextField.layer.cornerRadius = 8

        
        self.policyNumberTextField.layer.borderWidth = 1
        self.policyNumberTextField.layer.borderColor = UIColor.white.cgColor
        self.policyNumberTextField.layer.cornerRadius = 8

        self.loginButton.layer.borderWidth = 1
        self.loginButton.layer.cornerRadius = 5
        self.loginButton.layer.borderColor = UIColor.clear.cgColor
        
//        if !UIAccessibilityIsReduceTransparencyEnabled() {
//            view.backgroundColor = .clear
//            
//            let blurEffect = UIBlurEffect(style: .dark)
//            let blurEffectView = UIVisualEffectView(effect: blurEffect)
//            blurEffectView.alpha = 0.9
//            //always fill the view
//            blurEffectView.frame = self.view.bounds
//            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//            
//            self.backgroundImageView.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
//        } else {
//            view.backgroundColor = UIColor.blue
//        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
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
