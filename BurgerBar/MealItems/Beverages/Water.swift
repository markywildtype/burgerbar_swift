//
//  Water.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Water: Beverage, MealItem {
    
    var description: String
    var price: Float
    var inMeal: Bool
    
    init(){
        description = "Water"
        price = 0.90
        inMeal = false
    }
    
    func addToMeal() {
        inMeal = true
        price = 0.50
    }
    
}
