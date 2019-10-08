//
//  ViewController.swift
//  HW1
//
//  Created by Joshua Godinez on 10/1/19.
//  Copyright © 2019 Joshua Godinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Headache: UISegmentedControl!
    @IBOutlet weak var PressureHead: UISegmentedControl!
    @IBOutlet weak var NeckPain: UISegmentedControl!
    @IBOutlet weak var Nausea: UISegmentedControl!
    @IBOutlet weak var Dizziness: UISegmentedControl!
    @IBOutlet weak var Blurred: UISegmentedControl!
    @IBOutlet weak var Balance: UISegmentedControl!
    @IBOutlet weak var SensitivityLight: UISegmentedControl!
    @IBOutlet weak var SensitivityNoise: UISegmentedControl!
    @IBOutlet weak var FeelingSlowedDown: UISegmentedControl!
    
    
    //game count
    var games = 0
    //3 data in report
    var Score:Int?
    var Symptoms:Int?
    var criteriaMessage:String?
    
    var difference:Int?
    var gamedata: Games = Games()
    var calc : Calculate = Calculate()
    var crit : Criteria = Criteria()
    var userInput = [0,0,0,0,0,0,0,0,0,0]
    var stringData = [" "," "," "]

    @IBAction func addData(_ sender: Any) {

       
       
        userInput[0] = Int(Headache.titleForSegment(at: Headache.selectedSegmentIndex)!)!
        userInput[1] = Int(PressureHead.titleForSegment(at: PressureHead.selectedSegmentIndex)!)!
        userInput[2] = Int(NeckPain.titleForSegment(at: Nausea.selectedSegmentIndex)!)!
        userInput[3] = Int(Nausea.titleForSegment(at: Nausea.selectedSegmentIndex)!)!
        userInput[4] = Int(Dizziness.titleForSegment(at: Dizziness.selectedSegmentIndex)!)!
        userInput[5] = Int(Blurred.titleForSegment(at: Blurred.selectedSegmentIndex)!)!
        userInput[6] = Int(Balance.titleForSegment(at: Balance.selectedSegmentIndex)!)!
        userInput[7] = Int(SensitivityLight.titleForSegment(at: SensitivityLight.selectedSegmentIndex)!)!
        userInput[8] = Int(SensitivityNoise.titleForSegment(at: SensitivityNoise.selectedSegmentIndex)!)!
        userInput[9] = Int(FeelingSlowedDown.titleForSegment(at: FeelingSlowedDown.selectedSegmentIndex)!)!

        //get Score
         Score = calc.severityScore(array: userInput)
        //calculate symptoms
        Symptoms = calc.Symptoms(array: userInput)
        //calculate difference
        if games == 2 || gamedata.gameData[1]![0] != " "{
            if games+1 == 6
            {
                games = 0
            }
           
            gamedata.gameData[games+1]![0] = String(Score!)
            gamedata.gameData[games+1]![1] = String(Symptoms!)
            
            if games-1 == 1 && gamedata.gameData[5]![0] != " " {
                
                var one = Int(gamedata.gameData[1]![1])
                var two = Int(gamedata.gameData[5]![1])
                
                difference = calc.SymptomDifference(valOne: one!,valTwo: two!)
            }
            if games+1 == 2 {
                var one = Int(gamedata.gameData[2]![1])
                var two = Int(gamedata.gameData[1]![1])
                
                difference = calc.SymptomDifference(valOne: one!,valTwo: two!)
            }
            if games+1 == 3 {
                var one = Int(gamedata.gameData[3]![1])
                var two = Int(gamedata.gameData[2]![1])
                
                difference = calc.SymptomDifference(valOne: one!,valTwo: two!)
            }
            if games+1 == 4 {
                var one = Int(gamedata.gameData[4]![1])
                var two = Int(gamedata.gameData[3]![1])
                
                difference = calc.SymptomDifference(valOne: one!,valTwo: two!)
            }
            if games+1 == 5 {
                var one = Int(gamedata.gameData[5]![1])
                var two = Int(gamedata.gameData[4]![1])
                
                difference = calc.SymptomDifference(valOne: one!,valTwo: two!)
            }
            /*Continue*/
            
            criteriaMessage = crit.overallRating(score: Score!, symptomDifference:  difference!)
            gamedata.gameData[games+1]![2] = criteriaMessage!
            
        }
        else
        {
        gamedata.gameData[games+1]![1] = String(Score!)
        gamedata.gameData[games+1]![0] = String(Symptoms!)
        }
        
                   games = games + 1
             
            
       
            
        
        Headache.selectedSegmentIndex =  0
        PressureHead.selectedSegmentIndex =  0
        NeckPain.selectedSegmentIndex =  0
        Nausea.selectedSegmentIndex =  0
        Dizziness.selectedSegmentIndex =  0
        Blurred.selectedSegmentIndex =  0
        Balance.selectedSegmentIndex =  0
        SensitivityLight.selectedSegmentIndex =  0
        SensitivityNoise.selectedSegmentIndex =  0
        FeelingSlowedDown.selectedSegmentIndex =  0
        
        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toRisk")
            {   let des = segue.destination as! RiskViewController
                if games == 1 && gamedata.gameData[5]![0] == " "
                {
                
                des.riskMessage = "Only one game entered"
                }
                else if games == 0 && gamedata.gameData[1]![0] == " "
                {
                    des.riskMessage = "No games entered"
                }
                else
                {
                    des.riskMessage = criteriaMessage!
                    
                }
            }
        if (segue.identifier == "toStats")
        {
            
            let des = segue.destination as! StatsViewController
           if games == 1 && gamedata.gameData[5]![0] == " "
            {
             des.gameIndex = games
                       des.symptomsUno = String(Symptoms!)
                       des.scoreUno = String(Score!)
                
            }
           else
           {
           /* if games == 1 && gamedata.gameData[5]![0] != "Symptoms"
            {
                des.symptomsUno = String(Symptoms!)
                des.scoreUno = String(Score!)
                des.overallUno = String(criteriaMessage!)
            }
            if games == 2
            {
                       des.gameIndex = games
                       des.symptomsDos = String(Symptoms!)
                       des.scoreDos = String(Score!)
                       des.overallDos = String(criteriaMessage!)
            }
            if games == 3
            {
                       des.gameIndex = games
                       des.symptomsTres = String(Symptoms!)
                       des.scoreTres = String(Score!)
                       des.overallTres = String(criteriaMessage!)
            }
            if games == 4
            {
                       des.gameIndex = games
                       des.symmptomsQuatro = String(Symptoms!)
                       des.scoreQuatro = String(Score!)
                       des.overallQuatro = String(criteriaMessage!)
            }
            if games == 5
            {
                       des.gameIndex = games
                       des.symptomsCinco = String(Symptoms!)
                       des.scoreCinco = String(Score!)
                       des.overallCinco = String(criteriaMessage!)
            }*/
            des.symptomsUno = gamedata.gameData[1]![1]
            des.scoreUno = gamedata.gameData[1]![0]
            des.overallUno = gamedata.gameData[1]![2]
        
            des.symptomsDos = gamedata.gameData[2]![1]
            des.scoreDos = gamedata.gameData[2]![0]
            des.overallDos = gamedata.gameData[2]![2]
            
            des.symptomsTres = gamedata.gameData[3]![1]
            des.scoreTres = gamedata.gameData[3]![0]
            des.overallTres = gamedata.gameData[3]![2]
          
            des.symmptomsQuatro = gamedata.gameData[4]![1]
            des.scoreQuatro = gamedata.gameData[4]![0]
            des.overallQuatro = gamedata.gameData[4]![2]
            
            des.symptomsCinco = gamedata.gameData[5]![1]
            des.scoreCinco = gamedata.gameData[5]![0]
            des.overallCinco = gamedata.gameData[5]![2]
            
            
            }
                // edit criteria message function!!!!!
        }
        //if (segue.identifier == "toRisk")
       // {
            
       // }
    }
    
    
    


}

