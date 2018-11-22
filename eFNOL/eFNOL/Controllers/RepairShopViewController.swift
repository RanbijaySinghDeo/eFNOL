//
//  RepairShopViewController.swift
//  eFNOL
//
//  Created by Capgemini on 21/11/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class RepairShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var haveorNotToggle: UISegmentedControl!
    @IBOutlet weak var alreadyHaveView: UILabel!
    @IBOutlet weak var alreadyView: UIView!
    @IBOutlet weak var helpMeView: UIView!
    @IBOutlet weak var repairShopsTableView: UITableView!
    let reuseIdentifierRepairShop = "repairShopCell"
    
    let distanceArray : [String] = ["6 miles", "4 miles", "2.5 miles"]
    let shopNameArray : [String] = ["Grimson Joe Repair Works", "Yusu Repairs", "Indiana Motors"]
    let DescOneArray : [String] = ["Windsor, CT,", "Windsor, CT,", "Windsor, CT,"]
    let DescTwoArray : [String] = ["United States 06042", "United States 06042", "United States 06042"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.haveorNotToggle.selectedSegmentIndex = -1;
        self.alreadyView.isHidden = true
        self.helpMeView.isHidden = true
        
        self.repairShopsTableView.delegate = self
        self.repairShopsTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func HaveorNotTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.alreadyView.isHidden = false
            self.helpMeView.isHidden = true
        default:
            self.alreadyView.isHidden = true
            self.helpMeView.isHidden = false
        }
    }
    
    //TableView datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell:RepairShopsTableViewCell = self.repairShopsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierRepairShop) as! RepairShopsTableViewCell
            cell.distanceLabel.text = self.distanceArray[indexPath.row]
            cell.shopNameLabel.text = self.shopNameArray[indexPath.row]
        cell.shopDescOneLabel.text = self.DescOneArray[indexPath.row]
        cell.shopDescOneLabel.text = self.DescTwoArray[indexPath.row]
        
//        cell.distanceLabel
            return cell
            
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 146.0;//Choose your custom row height
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
