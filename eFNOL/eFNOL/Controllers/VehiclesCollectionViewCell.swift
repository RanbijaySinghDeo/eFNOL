//
//  VehiclesCollectionViewCell.swift
//  eFNOL
//
//  Created by Capgemini on 28/10/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class VehiclesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var vehicleNamesButton: UIButton!
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                self.vehicleNamesButton.backgroundColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0)
                self.vehicleNamesButton.setTitleColor(UIColor.white, for: .normal)
                self.vehicleNamesButton.layer.borderWidth = 0.8

            }
            else
            {
                self.vehicleNamesButton.backgroundColor = UIColor.white
                self.vehicleNamesButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
                self.vehicleNamesButton.layer.borderWidth = 0.8
                self.vehicleNamesButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
            }
        }
    }
    
}
