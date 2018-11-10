//
//  PolicyInfoViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 15/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import QuartzCore

class PolicyInfoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var whoShouldWeContactTableView: UITableView!
    @IBOutlet weak var whosReportingTableView: UITableView!
    @IBOutlet weak var draftCollectionView: UICollectionView!
    @IBOutlet weak var incidentDateTextField: UITextField!
    @IBOutlet weak var incidentLocationTextField: UITextField!
    @IBOutlet weak var policyNumberTextField: UITextField!
    @IBOutlet weak var zipCodeTextfield: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    let reuseIdentifierDraft = "collcellDraft"
    let cellReuseIdentifierOne = "whosReportingCell"
    let cellReuseIdentifierTwo = "WhoShouldCell"
    
    @IBOutlet weak var claimView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    let policyNameArray : [String] = ["John Doe", "Michel Row", "Someone Else"]
    let otherNameArray : [String] = ["Grimson Joe", "Yusu Loe", "Someone Else"]
    
    var claimArray:[String] = []
    var claimStatus:[String] = []
    var draftClaims:[String] = []
    var draftStatus:[String] = []
    var lossDate:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        uiChanges()
        self.draftCollectionView.delegate = self
        self.draftCollectionView.dataSource = self
        
        self.whosReportingTableView.delegate = self
        self.whosReportingTableView.dataSource = self
        
        self.whoShouldWeContactTableView.delegate = self
        self.whoShouldWeContactTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func uiChanges() {
        self.incidentDateTextField.layer.borderWidth = 1
        self.incidentDateTextField.layer.borderColor = UIColor.gray.cgColor
        self.incidentDateTextField.layer.cornerRadius = 5
        
        self.incidentLocationTextField.layer.borderWidth = 1
        self.incidentLocationTextField.layer.borderColor = UIColor.gray.cgColor
        self.incidentLocationTextField.layer.cornerRadius = 5
        
        
        self.phoneNumberTextField.layer.borderWidth = 1
        self.phoneNumberTextField.layer.borderColor = UIColor.gray.cgColor
        self.phoneNumberTextField.layer.cornerRadius = 5
        
        self.emailTextField.layer.borderWidth = 1
        self.emailTextField.layer.borderColor = UIColor.gray.cgColor
        self.emailTextField.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierDraft, for: indexPath as IndexPath) as! DraftCardCollectionViewCell
            
            
            cell.draftView.layer.borderColor = UIColor.gray.cgColor
            cell.draftView.layer.borderWidth = 1
            cell.claimNumberLabel.text = "123-4567-23"
        
            return cell
        
        
    }
    
    //TableView datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        if (tableView == self.whosReportingTableView) {
            let cell:WhosReportingTableViewCell = self.whosReportingTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifierOne) as! WhosReportingTableViewCell
            cell.nameLabel.text = self.policyNameArray[indexPath.row]
            cell.selectionButton.tag = indexPath.row
            let image1 = UIImage(named: "check-1") as UIImage?
            cell.selectionButton.setBackgroundImage(image1, for: .normal)
            return cell
            
        } else {
            let cell:WhoShouldWeContactTableViewCell = self.whoShouldWeContactTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifierTwo) as! WhoShouldWeContactTableViewCell
            cell.nameLabel.text = self.otherNameArray[indexPath.row]
            let image1 = UIImage(named: "check-1") as UIImage?
            cell.selectionButton.setBackgroundImage(image1, for: .normal)
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 55.0;//Choose your custom row height
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
