//
//  ViewController.swift
//  TipsApp
//
//  Created by Joshua Godinez on 6/17/20.
//  Copyright © 2020 Joshua Godinez. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTotal: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var tip = 0.10
    var People = 2.0
    var totalbill = 0.0
    var totalString = ""
    let calculateTip = TipCalculator()
   

    @IBAction func tipChanged(_ sender: UIButton) {
       //Dismiss the keyboard when the user chooses one of the tip values.
       billTotal.endEditing(true)
        //Deselect all tip buttons via IBOutlets
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        //Make the button that triggered the IBAction selected.
        sender.isSelected = true
    
        
        //Get the current title of the button that was pressed.
        let buttonTitle = sender.currentTitle!
        
        //Remove the last character (%) from the title then turn it back into a String.
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        
        //Turn the String into a Double.
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
        tip = buttonTitleAsANumber / 100
        totalbill = Double(billTotal.text!)!
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
         //Get the stepper value using sender.value, round it down to a whole number then set it as the text in
               //the splitNumberLabel
               splitNumberLabel.text = String(format: "%.0f", sender.value)
               
               //Set the numberOfPeople property as the value of the stepper as a whole number.
               People = Double(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        var totaldouble = calculateTip.calculate(total: totalbill , percent: tip, people: People)
        totalString = String(format:"%.2f",totaldouble)
        
        self.performSegue(withIdentifier: "resultSegue", sender: self)
        
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = totalString
            destinationVC.people = String(Int(People))
            destinationVC.tip = String(format:"%.0f",tip*100.0)
            
        }
    }
    
}

