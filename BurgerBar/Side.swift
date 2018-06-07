//
//  Side.swift
//  BurgerBar
//
//  Created by Mark Blanford on 05/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Side {
    
    var price: Float
    var inMeal: Bool
    
    init(){
        price = 2.99
        inMeal = false
    }
    
    func addedToMeal(){
        inMeal = true
        price = 1.50
    }
    
}
