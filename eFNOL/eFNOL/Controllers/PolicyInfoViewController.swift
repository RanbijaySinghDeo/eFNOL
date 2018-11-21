//
//  PolicyInfoViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 15/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import QuartzCore
import D2PDatePicker
import DropDown

class PolicyInfoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate, D2PDatePickerDelegate, UITextFieldDelegate {

    @IBOutlet weak var whoShouldWeContactTableView: UITableView!
    @IBOutlet weak var whosReportingTableView: UITableView!
    @IBOutlet weak var draftCollectionView: UICollectionView!
    @IBOutlet weak var incidentDateTextField: UITextField!
    @IBOutlet weak var incidentLocationTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var claimView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    let reuseIdentifierDraft = "collcellDraft"
    let cellReuseIdentifierOne = "whosReportingCell"
    let cellReuseIdentifierTwo = "WhoShouldCell"
    let policyNameArray : [String] = ["John Doe", "Michel Row", "Someone Else"]
    let otherNameArray : [String] = ["Grimson Joe", "Yusu Loe", "Someone Else"]
    let policyNumberArray : [String] = ["123-4567-23", "123-4567-24", "123-4567-25", "123-4567-26", "123-4567-27", "123-4567-28"]
    let amountDropDown = DropDown()
    var datePickerView: D2PDatePicker!
    var claimArray:[String] = []
    var claimStatus:[String] = []
    var draftClaims:[String] = []
    var draftStatus:[String] = []
    var lossDate:[String] = []
    var selectedPolicy : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateDataPointSetUp()
        uiChanges()
        countryStatesDropDown()
        keyboardAdjustment()
    }
    
    func keyboardAdjustment() {
            NotificationCenter.default.addObserver(self, selector: #selector(PolicyInfoViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(PolicyInfoViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
       
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {

        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.phoneNumberTextField.isFirstResponder {
                self.view.frame.origin.y = -keyboardSize.height
            }
            if self.emailTextField.isFirstResponder {
                self.view.frame.origin.y = -keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    func didChange(toDate date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let dateString = dateFormatter.string(from:date as Date)
        self.incidentDateTextField.text = dateString
        
    }
    func delegateDataPointSetUp() {
        self.draftCollectionView.delegate = self
        self.draftCollectionView.dataSource = self
        
        self.whosReportingTableView.delegate = self
        self.whosReportingTableView.dataSource = self
        
        self.whoShouldWeContactTableView.delegate = self
        self.whoShouldWeContactTableView.dataSource = self
        
        self.incidentDateTextField.delegate = self
        self.incidentLocationTextField.delegate = self
        
        datePickerView = D2PDatePicker(frame: .zero, date: Date())
        datePickerView.translatesAutoresizingMaskIntoConstraints = false
        datePickerView.isHidden = true
        datePickerView.delegate = self
        self.amountDropDown.hide()
        datePickerView.isHidden = true
        
        func setDate() {
            datePickerView.set(toDate: Date())
        }
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
        
        self.draftCollectionView.isHidden = true
        self.claimView.isHidden = true
        
        self.nextButton.isEnabled = false
        self.nextButton.alpha = 0.5
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.datePickerView.isHidden = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField.tag == 111) {
            datePickerView.isHidden = false;
            self.view.addSubview(datePickerView)
            self.view.addConstraints([
                NSLayoutConstraint(item: datePickerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250),
                NSLayoutConstraint(item: datePickerView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200),
                NSLayoutConstraint(item: datePickerView, attribute: .centerX, relatedBy: .equal, toItem: textField, attribute: .centerX, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: datePickerView, attribute: .centerY, relatedBy: .equal, toItem: textField, attribute: .centerY, multiplier: 1, constant: 0)
                ])
        } else if (textField.tag == 112) {
            self.amountDropDown.show()

        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.tag == 111) {
            datePickerView.isHidden = false;
            self.view.addSubview(datePickerView)
            self.view.addConstraints([
                NSLayoutConstraint(item: datePickerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250),
                NSLayoutConstraint(item: datePickerView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200),
                NSLayoutConstraint(item: datePickerView, attribute: .centerX, relatedBy: .equal, toItem: textField, attribute: .centerX, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: datePickerView, attribute: .centerY, relatedBy: .equal, toItem: textField, attribute: .centerY, multiplier: 1, constant: 0)
                ])
        } else if (textField.tag == 112) {

           self.amountDropDown.show()
            
        }
        
        return true;
    }
    
    
    func countryStatesDropDown() {
        amountDropDown.anchorView = incidentLocationTextField
        amountDropDown.bottomOffset = CGPoint(x: 0, y: incidentLocationTextField.bounds.height)
        let stateListDictionary : [String: String] =
        [
                "AL": "Alabama",
                "AK": "Alaska",
                "AS": "American Samoa",
                "AZ": "Arizona",
                "AR": "Arkansas",
                "CA": "California",
                "CO": "Colorado",
                "CT": "Connecticut",
                "DE": "Delaware",
                "DC": "District Of Columbia",
                "FM": "Federated States Of Micronesia",
                "FL": "Florida",
                "GA": "Georgia",
                "GU": "Guam",
                "HI": "Hawaii",
                "ID": "Idaho",
                "IL": "Illinois",
                "IN": "Indiana",
                "IA": "Iowa",
                "KS": "Kansas",
                "KY": "Kentucky",
                "LA": "Louisiana",
                "ME": "Maine",
                "MH": "Marshall Islands",
                "MD": "Maryland",
                "MA": "Massachusetts",
                "MI": "Michigan",
                "MN": "Minnesota",
                "MS": "Mississippi",
                "MO": "Missouri",
                "MT": "Montana",
                "NE": "Nebraska",
                "NV": "Nevada",
                "NH": "New Hampshire",
                "NJ": "New Jersey",
                "NM": "New Mexico",
                "NY": "New York",
                "NC": "North Carolina",
                "ND": "North Dakota",
                "MP": "Northern Mariana Islands",
                "OH": "Ohio",
                "OK": "Oklahoma",
                "OR": "Oregon",
                "PW": "Palau",
                "PA": "Pennsylvania",
                "PR": "Puerto Rico",
                "RI": "Rhode Island",
                "SC": "South Carolina",
                "SD": "South Dakota",
                "TN": "Tennessee",
                "TX": "Texas",
                "UT": "Utah",
                "VT": "Vermont",
                "VI": "Virgin Islands",
                "VA": "Virginia",
                "WA": "Washington",
                "WV": "West Virginia",
                "WI": "Wisconsin",
                "WY": "Wyoming"
            
        ]
        
        for values in stateListDictionary.values {
            amountDropDown.dataSource.append(values)
        }
        
        // Action triggered on selection
        amountDropDown.selectionAction = { [weak self] (index, item) in
            self?.incidentLocationTextField.text = item
            
            if (self?.incidentDateTextField.text != nil && self?.incidentLocationTextField.text != nil) {
                self?.draftCollectionView.isHidden = false
                self?.claimView.isHidden = true
            }
        }
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
            cell.claimNumberLabel.text = policyNumberArray[indexPath.row]
        
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
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedPolicy.append(policyNumberArray[indexPath.row])
        claimView.isHidden = false
        self.nextButton.isEnabled = true
        self.nextButton.alpha = 1.0
        print(selectedPolicy)

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

extension ViewController: D2PDatePickerDelegate {
    
    func didChange(toDate date: Date) {
        print(date)
    }
    
}
