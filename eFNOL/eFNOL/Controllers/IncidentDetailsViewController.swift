//
//  IncidentDetailsViewController.swift
//  eFNOL
//
//  Created by Capgemini on 27/10/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import DropDown


class IncidentDetailsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var objectsButton: UIButton!
    @IBOutlet weak var buildingsButton: UIButton!
    @IBOutlet weak var otherVehicleButton: UIButton!
    @IBOutlet weak var collisionDescriptionTextField: UITextField!
    let amountDropDown = DropDown()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collisionDescriptionTextField.delegate = self
        countryStatesDropDown()

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
        
        self.collisionDescriptionTextField.layer.borderWidth = 1
        self.collisionDescriptionTextField.layer.borderColor = UIColor.gray.cgColor
        self.collisionDescriptionTextField.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.amountDropDown.show()

    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        self.amountDropDown.show()
        return true

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
    
    func countryStatesDropDown() {
        amountDropDown.anchorView = collisionDescriptionTextField
        amountDropDown.bottomOffset = CGPoint(x: 0, y:(amountDropDown.anchorView?.plainView.bounds.height)!)
        //CGPoint(x: 0, y: collisionDescriptionTextField.bounds.height)
        amountDropDown.direction = .bottom

        let stateListDictionary : [String: String] =
            [
                "AL": "Alabama",
                "AK": "Alaska",
                "AS": "American Samoa",
                "AZ": "Arizona",
                "AR": "Arkansas",
                "CA": "California",
                
        ]
        
        for values in stateListDictionary.values {
            amountDropDown.dataSource.append(values)
        }
        
        // Action triggered on selection
        amountDropDown.selectionAction = { [weak self] (index, item) in
            self?.collisionDescriptionTextField.text = item
            
//            if (self?.incidentDateTextField.text != nil && self?.incidentLocationTextField.text != nil) {
//                self?.draftCollectionView.isHidden = false
//                self?.claimView.isHidden = true
//            }
        }
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
