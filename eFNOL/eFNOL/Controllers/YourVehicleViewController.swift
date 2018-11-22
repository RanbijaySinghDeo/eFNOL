//
//  YourVehicleViewController.swift
//  eFNOL
//
//  Created by Capgemini on 28/10/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class YourVehicleViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let reuseIdentifierDraft = "VehicleCell"
    let vehiclesArray : [String] = ["AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU"]
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var airbagDeployedSegment: UISegmentedControl!
    @IBOutlet weak var vehicleParkedSegment: UISegmentedControl!
    @IBOutlet weak var vehicleDrivableSegment: UISegmentedControl!
    @IBOutlet weak var driverTwoButton: UIButton!
    @IBOutlet weak var driverOneButton: UIButton!
    @IBOutlet weak var someonelseButton: UIButton!
    @IBOutlet weak var vehiclesCollectionView: UICollectionView!
    @IBOutlet weak var bothButton: UIButton!
    @IBOutlet weak var entirerightButton: UIButton!
    @IBOutlet weak var entireLeftButton: UIButton!
    @IBOutlet weak var undercarraigeButton: UIButton!
    @IBOutlet weak var idontKnowButton: UIButton!
    @IBOutlet weak var everywhereButton: UIButton!
    var selectedPolicy : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vehiclesCollectionView.delegate = self
        self.vehiclesCollectionView.dataSource = self
        
        let itemSize = UIScreen.main.bounds.width/3 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        let image1 = UIImage(named: "check-1") as UIImage?
        
        self.driverOneButton.setBackgroundImage(image1, for: .normal)
        self.driverTwoButton.setBackgroundImage(image1, for: .normal)
        self.someonelseButton.setBackgroundImage(image1, for: .normal)
        
        self.vehicleDrivableSegment.selectedSegmentIndex = -1
        self.vehicleParkedSegment.selectedSegmentIndex = -1
        self.airbagDeployedSegment.selectedSegmentIndex = -1
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierDraft, for: indexPath as IndexPath) as! VehiclesCollectionViewCell
        cell.vehicleNamesButton.setTitle(self.vehiclesArray[indexPath.row], for: .normal)
        cell.vehicleNamesButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping

        cell.vehicleNamesButton.backgroundColor = UIColor.white
        cell.vehicleNamesButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        cell.vehicleNamesButton.layer.borderWidth = 0.8
        cell.vehicleNamesButton.tag = indexPath.row
        cell.vehicleNamesButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        return cell
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedPolicy = vehiclesArray[indexPath.row]
        
        
    }

    @IBAction func driverOneTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?

        self.driverOneButton.setBackgroundImage(image2, for: .normal)
        self.driverTwoButton.setBackgroundImage(image1, for: .normal)
        self.someonelseButton.setBackgroundImage(image1, for: .normal)

    }
    @IBAction func driverTwoTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.driverOneButton.setBackgroundImage(image1, for: .normal)
        self.driverTwoButton.setBackgroundImage(image2, for: .normal)
        self.someonelseButton.setBackgroundImage(image1, for: .normal)
    }
    
    @IBAction func someOneElseTapped(_ sender: UIButton) {
        
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.driverOneButton.setBackgroundImage(image1, for: .normal)
        self.driverTwoButton.setBackgroundImage(image1, for: .normal)
        self.someonelseButton.setBackgroundImage(image2, for: .normal)
    }
    @IBAction func bothTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image2, for: .normal)
        self.entirerightButton.setBackgroundImage(image1, for: .normal)
        self.entireLeftButton.setBackgroundImage(image1, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image1, for: .normal)
        self.everywhereButton.setBackgroundImage(image1, for: .normal)
        self.idontKnowButton.setBackgroundImage(image1, for: .normal)

        
    }
    @IBAction func entireRightTapped(_ sender: Any) {
        
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image1, for: .normal)
        self.entirerightButton.setBackgroundImage(image2, for: .normal)
        self.entireLeftButton.setBackgroundImage(image1, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image1, for: .normal)
        self.everywhereButton.setBackgroundImage(image1, for: .normal)
        self.idontKnowButton.setBackgroundImage(image1, for: .normal)

    }
    @IBAction func entireLeftTapped(_ sender: Any) {
        
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image1, for: .normal)
        self.entirerightButton.setBackgroundImage(image1, for: .normal)
        self.entireLeftButton.setBackgroundImage(image2, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image1, for: .normal)
        self.everywhereButton.setBackgroundImage(image1, for: .normal)
        self.idontKnowButton.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func undercarraigeTapped(_ sender: UIButton) {
        
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image1, for: .normal)
        self.entirerightButton.setBackgroundImage(image1, for: .normal)
        self.entireLeftButton.setBackgroundImage(image1, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image2, for: .normal)
        self.everywhereButton.setBackgroundImage(image1, for: .normal)
        self.idontKnowButton.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func everyWhereTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image1, for: .normal)
        self.entirerightButton.setBackgroundImage(image1, for: .normal)
        self.entireLeftButton.setBackgroundImage(image1, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image1, for: .normal)
        self.everywhereButton.setBackgroundImage(image2, for: .normal)
        self.idontKnowButton.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func dintKnowTapped(_ sender: UIButton) {
        
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.bothButton.setBackgroundImage(image1, for: .normal)
        self.entirerightButton.setBackgroundImage(image1, for: .normal)
        self.entireLeftButton.setBackgroundImage(image1, for: .normal)
        self.undercarraigeButton.setBackgroundImage(image1, for: .normal)
        self.everywhereButton.setBackgroundImage(image1, for: .normal)
        self.idontKnowButton.setBackgroundImage(image2, for: .normal)
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
