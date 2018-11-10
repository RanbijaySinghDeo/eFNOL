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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func propertyDamageSelectionTapped(_ sender: UISegmentedControl) {
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
