//
//  StatsViewController.swift
//  HW1
//
//  Created by Joshua Godinez on 10/1/19.
//  Copyright © 2019 Joshua Godinez. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    @IBOutlet weak var symptonsOne: UILabel!
    @IBOutlet weak var scoreOne: UILabel!
    @IBOutlet weak var overallOne: UILabel!
    
    @IBOutlet weak var symptonsTwo: UILabel!
    @IBOutlet weak var scoreTwo: UILabel!
    @IBOutlet weak var overallTwo: UILabel!
    
    @IBOutlet weak var symptonsThree: UILabel!
    @IBOutlet weak var scoreThree: UILabel!
    @IBOutlet weak var overallThree: UILabel!
    
    @IBOutlet weak var symptonsFour: UILabel!
    @IBOutlet weak var scoreFour: UILabel!
    @IBOutlet weak var overallFour: UILabel!
    
    @IBOutlet weak var symptonsFive: UILabel!
    @IBOutlet weak var scoreFive: UILabel!
    @IBOutlet weak var overallFive: UILabel!
   
    var gameIndex = 0
    
    var symptomsUno = " "
    var symptomsDos = " "
    var symptomsTres = " "
    var symmptomsQuatro = " "
    var symptomsCinco = " "
    
    var scoreUno = " "
    var scoreDos = " "
    var scoreTres = " "
    var scoreQuatro = " "
    var scoreCinco = " "
    
    var overallUno = " "
    var overallDos = " "
    var overallTres = " "
    var overallQuatro = " "
    var overallCinco = " "
    
    
    var overall = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //if gameIndex == 1
        //{
        symptonsOne.text = symptomsUno
        scoreOne.text = scoreUno
        overallOne.text = overallUno
            
            symptonsTwo.text = symptomsDos
            scoreTwo.text = scoreDos
            overallTwo.text = overallDos
            
            symptonsThree.text = symptomsTres
            scoreThree.text = scoreTres
            overallThree.text = overallTres
            
            symptonsFour.text = symmptomsQuatro
            scoreFour.text = scoreQuatro
            overallFour.text = overallQuatro
            
            symptonsFive.text = symptomsCinco
            scoreFive.text = scoreCinco
            overallFive.text = overallCinco
            
            
      //  }
        /*if gameIndex == 2
        {
            symptonsTwo.text = symptoms
            scoreTwo.text = score
            overallTwo.text = overall
            
        }
        if gameIndex == 3
        {
            symptonsThree.text = symptoms
            scoreThree.text = score
            overallThree.text = overall
        }
        if gameIndex == 4
        {
            symptonsFour.text = symptoms
            scoreFour.text = score
            overallFour.text = overall
        }
        if gameIndex == 5
        {
            symptonsFive.text = symptoms
            scoreFive.text = score
            overallFive.text = overall
        }*/
        
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
