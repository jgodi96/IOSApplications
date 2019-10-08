//
//  Criteria.swift
//  HW1
//
//  Created by Joshua Godinez on 10/1/19.
//  Copyright © 2019 Joshua Godinez. All rights reserved.
//

import Foundation
class Criteria{
    func overallRating(score:Int,symptomDifference:Int)->String{
        var message:String?
        if symptomDifference<3 && score<10
        {
            message = "No Difference"
        }
        if symptomDifference<3 && score>=10
        {
            message = "Unsure"
        }
        if symptomDifference>=3 || score>=15
        {
            message = "Very Different"
        }
        return message!
    }
    
}
