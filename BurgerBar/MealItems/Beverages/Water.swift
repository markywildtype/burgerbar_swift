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
    
    init(){
        description = "Water"
        price = 0.90
    }
    
    func addToMeal() {
        price = 0.50
    }
    
}
