//
//  KnockOutViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 15/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import QuartzCore

class KnockOutViewController: UIViewController {

    @IBOutlet weak var collisionButton: UIButton!
    @IBOutlet weak var ranOfRoadButton: UIButton!
    @IBOutlet weak var weatherButton: UIButton!
    @IBOutlet weak var fireTapped: UIButton!
    @IBOutlet weak var theftButton: UIButton!
    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var glassButton: UIButton!
    @IBOutlet weak var towOnlyButton: UIButton!
    @IBOutlet weak var anyoneInjuredSegment: UISegmentedControl!
    @IBOutlet weak var pedestrianInvolvedSegment: UISegmentedControl!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anyoneInjuredSegment.selectedSegmentIndex = -1
        pedestrianInvolvedSegment.selectedSegmentIndex = -1
        self.nextButton.isEnabled = false
        self.nextButton.alpha = 0.5
        knockoutButtonsSetup()
        
        // Do any additional setup after loading the view.
    }
    
    func knockoutButtonsSetup() {
        
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func collisionTapped(_ sender: UIButton) {
        if(self.collisionButton.backgroundColor == .white){
            self.collisionButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.collisionButton.setTitleColor(.white, for: .normal)
        } else {
            self.collisionButton.backgroundColor = .white
            self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
       
        
    }
    
    @IBAction func runOffroadTapped(_ sender: UIButton) {
        if (self.ranOfRoadButton.backgroundColor == .white){
            self.ranOfRoadButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.ranOfRoadButton.setTitleColor(.white, for: .normal)
        } else {
            self.ranOfRoadButton.backgroundColor = .white
            self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        

    }
    @IBAction func weatherTapped(_ sender: Any) {
        if (self.weatherButton.backgroundColor == .white){
            self.weatherButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.weatherButton.setTitleColor(.white, for: .normal)

        } else {
            self.weatherButton.backgroundColor = .white
            self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
       
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
       
        
    }
    @IBAction func fireTapped(_ sender: Any) {
        if (self.fireTapped.backgroundColor == .white) {
            self.fireTapped.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.fireTapped.setTitleColor(.white, for: .normal)
        } else {
            self.fireTapped.backgroundColor = .white
            self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
    
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
    }
    @IBAction func theftTapped(_ sender: Any) {
        
        if (self.theftButton.backgroundColor == .white) {
            self.theftButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.theftButton.setTitleColor(.white, for: .normal)
            
        } else {
            self.theftButton.backgroundColor = .white
            self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
       
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
    }
    @IBAction func animalTapped(_ sender: UIButton) {
        if (self.animalButton.backgroundColor == .white) {
            self.animalButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.animalButton.setTitleColor(.white, for: .normal)
        } else {
            self.animalButton.backgroundColor = .white
            self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
       
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
       

    }
    @IBAction func glassTapped(_ sender: UIButton) {
        if (self.glassButton.backgroundColor == .white) {
            self.glassButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.glassButton.setTitleColor(.white, for: .normal)
        } else {
            self.glassButton.backgroundColor = .white
            self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
       
        self.towOnlyButton.backgroundColor = UIColor.white
        self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.towOnlyButton.layer.borderWidth = 0.8
        self.towOnlyButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
    }
    @IBAction func towTapped(_ sender: UIButton) {
        if (self.towOnlyButton.backgroundColor == .white) {
            self.towOnlyButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.towOnlyButton.setTitleColor(.white, for: .normal)
        } else {
            self.towOnlyButton.backgroundColor = .white
            self.towOnlyButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        self.collisionButton.backgroundColor = UIColor.white
        self.collisionButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.collisionButton.layer.borderWidth = 0.8
        self.collisionButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.ranOfRoadButton.backgroundColor = UIColor.white
        self.ranOfRoadButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.ranOfRoadButton.layer.borderWidth = 0.8
        self.ranOfRoadButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.weatherButton.backgroundColor = UIColor.white
        self.weatherButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.weatherButton.layer.borderWidth = 0.8
        self.weatherButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        
        self.fireTapped.backgroundColor = UIColor.white
        self.fireTapped.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.fireTapped.layer.borderWidth = 0.8
        self.fireTapped.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.theftButton.backgroundColor = UIColor.white
        self.theftButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.theftButton.layer.borderWidth = 0.8
        self.theftButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.animalButton.backgroundColor = UIColor.white
        self.animalButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.animalButton.layer.borderWidth = 0.8
        self.animalButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.glassButton.backgroundColor = UIColor.white
        self.glassButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.glassButton.layer.borderWidth = 0.8
        self.glassButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        

    }
    @IBAction func pedestrianInvolvedTapped(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
            self.nextButton.isEnabled = true
            self.nextButton.alpha = 1.0
        }
    }
    @IBAction func anyOneInjuredTapped(_ sender: UISegmentedControl) {
        
        
        
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
