//
//  ResultsViewController.swift
//  TipsApp
//
//  Created by Joshua Godinez on 6/17/20.
//  Copyright © 2020 Joshua Godinez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var total:String?
    var people:String?
    var tip:String?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(total!)
        settingsLabel.text = ("Split between \(people!) people, with \(tip!)% tip")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated:true, completion:nil)
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
