//
//  OtherVehiclesViewController.swift
//  eFNOL
//
//  Created by Capgemini on 9/11/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class OtherVehiclesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let reuseIdentifierDraft = "OtherVehicleCell"
    let vehiclesArray : [String] = ["AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU", "AUDI A3 E-TRON PREM P", "TOYOTA AVALON XL XLS TO" , "AUDI A3 E-TRON PREMIU"]
    @IBOutlet weak var otherVehiclesCollectionView: UICollectionView!
    @IBOutlet weak var mainSegment: UISegmentedControl!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var skipLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.otherVehiclesCollectionView.delegate = self
        self.otherVehiclesCollectionView.dataSource = self
        self.view1.isHidden = true
        self.view2.isHidden = true
        self.skipLabel.isHidden = true
        self.mainSegment.selectedSegmentIndex = -1
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierDraft, for: indexPath as IndexPath) as! OtherVehicleCollectionViewCell
        cell.otherVehicleButton.setTitle(self.vehiclesArray[indexPath.row], for: .normal)
        cell.otherVehicleButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        cell.otherVehicleButton.backgroundColor = UIColor.white
        cell.otherVehicleButton.setTitleColor(UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0), for: .normal)
        cell.otherVehicleButton.layer.borderWidth = 0.8
        cell.otherVehicleButton.tag = indexPath.row
        cell.otherVehicleButton.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        return cell
        
        
    }

    @IBAction func yesNoMainTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view1.isHidden = false
            self.view2.isHidden = false
            self.skipLabel.isHidden = true
            break
        case 1:
            self.view1.isHidden = true
            self.view2.isHidden = true
            self.skipLabel.isHidden = false
            break
        default:
            break
        }
        
    }
    
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image2, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.buttonThree.setBackgroundImage(image1, for: .normal)
        self.buttonFour.setBackgroundImage(image1, for: .normal)
        self.buttonFive.setBackgroundImage(image1, for: .normal)
        self.buttonSix.setBackgroundImage(image1, for: .normal)
        
        
    }
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image2, for: .normal)
        self.buttonThree.setBackgroundImage(image1, for: .normal)
        self.buttonFour.setBackgroundImage(image1, for: .normal)
        self.buttonFive.setBackgroundImage(image1, for: .normal)
        self.buttonSix.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.buttonThree.setBackgroundImage(image2, for: .normal)
        self.buttonFour.setBackgroundImage(image1, for: .normal)
        self.buttonFive.setBackgroundImage(image1, for: .normal)
        self.buttonSix.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.buttonThree.setBackgroundImage(image1, for: .normal)
        self.buttonFour.setBackgroundImage(image2, for: .normal)
        self.buttonFive.setBackgroundImage(image1, for: .normal)
        self.buttonSix.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func buttonFiveTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.buttonThree.setBackgroundImage(image1, for: .normal)
        self.buttonFour.setBackgroundImage(image1, for: .normal)
        self.buttonFive.setBackgroundImage(image2, for: .normal)
        self.buttonSix.setBackgroundImage(image1, for: .normal)
    }
    @IBAction func buttonSixTapped(_ sender: UIButton) {
        let image1 = UIImage(named: "check-1") as UIImage?
        let image2 = UIImage(named: "check_yes") as UIImage?
        
        self.buttonOne.setBackgroundImage(image1, for: .normal)
        self.buttonTwo.setBackgroundImage(image1, for: .normal)
        self.buttonThree.setBackgroundImage(image1, for: .normal)
        self.buttonFour.setBackgroundImage(image1, for: .normal)
        self.buttonFive.setBackgroundImage(image1, for: .normal)
        self.buttonSix.setBackgroundImage(image2, for: .normal)
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
