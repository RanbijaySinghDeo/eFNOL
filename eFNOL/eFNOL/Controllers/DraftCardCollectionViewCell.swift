//
//  DraftCardCollectionViewCell.swift
//  CapClaims
//
//  Created by Ranbijay SinghDeo on 19/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class DraftCardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var claimNumberLabel: UILabel!
    @IBOutlet weak var draftView: UIView!
    @IBOutlet weak var claimType: UILabel!
    @IBOutlet weak var progressImage: UIImageView!
    @IBOutlet weak var policystatusImage: UIImageView!
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                self.transform = CGAffineTransform(scaleX: 1.03, y: 1.03)
                        draftView.layer.borderWidth = 2.0
                        draftView.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
            }
            else
            {
                self.transform = CGAffineTransform.identity
                self.contentView.backgroundColor = UIColor.gray
                draftView.layer.borderWidth = 2.0
                draftView.layer.borderColor = UIColor.gray.cgColor
            }
        }
    }

}
