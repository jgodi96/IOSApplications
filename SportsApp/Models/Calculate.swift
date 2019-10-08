//
//  Calculate.swift
//  HW1
//
//  Created by Joshua Godinez on 10/1/19.
//  Copyright © 2019 Joshua Godinez. All rights reserved.
//

import Foundation
class Calculate{
    
    var scoreInputs: [Int] = [0,0,0,0,0,0,0,0,0,0]

    //return severity score
    func severityScore(array:[Int]) -> Int{
        var Score=0
        
        for n in 0...array.count-1 {
            Score = Int(array[n]) + Score
        }
        return Score
        
    }
    //return symptoms in array
    func Symptoms(array:[Int])-> Int{
        
        var symptomsCount = 0
        
        for n in 0...array.count-1{
            if array[n] != 0
            {
                symptomsCount = symptomsCount + 1
            }
            
            
        }
        return symptomsCount
        
        }
    //return symptomm difference
    func SymptomDifference(valOne:Int,valTwo:Int) -> Int {
        var difference = valOne-valTwo
        
        return abs(difference)
    }
    
    
    
}
