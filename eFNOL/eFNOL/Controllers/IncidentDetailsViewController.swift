//
//  IncidentDetailsViewController.swift
//  eFNOL
//
//  Created by Capgemini on 27/10/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class IncidentDetailsViewController: UIViewController {

    @IBOutlet weak var objectsButton: UIButton!
    @IBOutlet weak var buildingsButton: UIButton!
    @IBOutlet weak var otherVehicleButton: UIButton!
    @IBOutlet weak var collisionDescriptionTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.objectsButton.backgroundColor = UIColor.white
        self.objectsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.objectsButton.layer.borderWidth = 0.8
        self.objectsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.buildingsButton.backgroundColor = UIColor.white
        self.buildingsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.buildingsButton.layer.borderWidth = 0.8
        self.buildingsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.otherVehicleButton.backgroundColor = UIColor.white
        self.otherVehicleButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.otherVehicleButton.layer.borderWidth = 0.8
        self.otherVehicleButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func otherVehicleButtonTapped(_ sender: UIButton) {
        if(self.otherVehicleButton.backgroundColor == .white){
            self.otherVehicleButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.otherVehicleButton.setTitleColor(.white, for: .normal)
        } else {
            self.otherVehicleButton.backgroundColor = .white
            self.otherVehicleButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        
        self.buildingsButton.backgroundColor = UIColor.white
        self.buildingsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.buildingsButton.layer.borderWidth = 0.8
        self.buildingsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.objectsButton.backgroundColor = UIColor.white
        self.objectsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.objectsButton.layer.borderWidth = 0.8
        self.objectsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
    
    }
    
    @IBAction func buildingButtonTapped(_ sender: UIButton) {
        
        if(self.buildingsButton.backgroundColor == .white){
            self.buildingsButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.buildingsButton.setTitleColor(.white, for: .normal)
        } else {
            self.buildingsButton.backgroundColor = .white
            self.buildingsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        
        self.otherVehicleButton.backgroundColor = UIColor.white
        self.otherVehicleButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.otherVehicleButton.layer.borderWidth = 0.8
        self.otherVehicleButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.objectsButton.backgroundColor = UIColor.white
        self.objectsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.objectsButton.layer.borderWidth = 0.8
        self.objectsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
    }
    @IBAction func objectsButtonTapped(_ sender: Any) {
        if(self.objectsButton.backgroundColor == .white){
            self.objectsButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
            self.objectsButton.setTitleColor(.white, for: .normal)
        } else {
            self.objectsButton.backgroundColor = .white
            self.objectsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
            
        }
        
        self.otherVehicleButton.backgroundColor = UIColor.white
        self.otherVehicleButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.otherVehicleButton.layer.borderWidth = 0.8
        self.otherVehicleButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        
        self.buildingsButton.backgroundColor = UIColor.white
        self.buildingsButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        self.buildingsButton.layer.borderWidth = 0.8
        self.buildingsButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
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
