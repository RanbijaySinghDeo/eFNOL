//
//  ConfirmationViewController.swift
//  eFNOL
//
//  Created by Ranbijay SinghDeo on 15/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellReuseIdentifier = "ConfirmationCell"
    @IBOutlet weak var confirmationTableView: UITableView!
    let dataArray : [String] = ["Claim Number","Date Reported","Policy Number","Claim Adjuster","Repair Shop"]
    let valueArray : [String] = ["PA0000621399","06/22/2018","55PHB755031","Afiya Quashie","Carstar Ray's Auto Body"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.confirmationTableView.delegate = self
        self.confirmationTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        // create a new cell if needed or reuse an old one
        let cell:ConfirmationTableViewCell = self.confirmationTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! ConfirmationTableViewCell
        cell.dataLabel.text = self.dataArray[indexPath.row]
        cell.valueLabel.text = self.valueArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 83.0;//Choose your custom row height
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
