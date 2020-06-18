//
//  TipCalculator.swift
//  TipsApp
//
//  Created by Joshua Godinez on 6/18/20.
//  Copyright © 2020 Joshua Godinez. All rights reserved.
//

import Foundation
class TipCalculator {
   
    func calculate(total:Double,percent:Double,people:Double) -> Double{
        
        var finaltip = ((total*percent)+total)/people
        return finaltip
    }
}
