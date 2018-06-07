//
//  Chips.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Chips: Side, MealItem {
 
    let description: String
    var price: Float
    
    init(){
        description = "Chips"
        price = 1.99
    }
    
    func addToMeal(){
        price = 1.00
    }
    
    
}
