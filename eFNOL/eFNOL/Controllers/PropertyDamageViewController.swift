//
//  PropertyDamageViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 15/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class PropertyDamageViewController: UIViewController {
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var propertyTextField: UITextView!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttomOne: UIButton!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var propertyDamageSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.propertyDamageSegment.selectedSegmentIndex = -1
        self.dataLabel.isHidden = true
        self.view1.isHidden = true
        self.view2.isHidden = true
        self.nextButton.isEnabled = false
        self.nextButton.alpha = 0.5

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func propertyDamageSelectionTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.dataLabel.isHidden = false
            self.view1.isHidden = true
            self.view2.isHidden = true
            break
        case 1:
            self.dataLabel.isHidden = true
            self.view1.isHidden = false
            self.view2.isHidden = false
            self.nextButton.isEnabled = true
            self.nextButton.alpha = 1.0
            break
        default:
            break
        }
        
    }
    
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttomOne.setBackgroundImage(image2, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.button3.setBackgroundImage(image1, for: .normal)
        
        self.nextButton.isEnabled = true
        self.nextButton.alpha = 1.0
    }
    @IBAction func buttonYwoTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonTwo.setBackgroundImage(image2, for: .normal)
        self.buttomOne.setBackgroundImage(image1, for: .normal)
        self.button3.setBackgroundImage(image1, for: .normal)
        self.nextButton.isEnabled = true
        self.nextButton.alpha = 1.0
    }
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.button3.setBackgroundImage(image2, for: .normal)
        self.buttomOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.nextButton.isEnabled = true
        self.nextButton.alpha = 1.0
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
