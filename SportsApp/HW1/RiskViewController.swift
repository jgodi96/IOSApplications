//
//  RiskViewController.swift
//  HW1
//
//  Created by Joshua Godinez on 10/2/19.
//  Copyright © 2019 Joshua Godinez. All rights reserved.
//

import UIKit

class RiskViewController: UIViewController {
    var riskMessage=" "

    @IBOutlet weak var riskPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if riskMessage == "Only one game entered"
        {
            let image = UIImage(named: "bruh.png");
            self.riskPic.image=image
        }
        if riskMessage == "No Difference"
        {
           let image = UIImage(named: "greenhappy.png");
           self.riskPic.image=image
        }
        if riskMessage == "Unsure"
        {
            let image = UIImage(named: "yellowneutral.png");
             self.riskPic.image=image
        }
        if riskMessage == "Very Different"
        {
            let image = UIImage(named: "redsad.png");
            self.riskPic.image=image
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
