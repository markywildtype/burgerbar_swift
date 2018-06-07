//
//  SweetPotatoFries.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class SweetPotatoFries: MealItem {
    
    var price: Float
    var inMeal: Bool
    
    init() {
        price = 2.99
        inMeal = false
    }
    
    func addToMeal() {
        inMeal = true
        price = 2.00
    }
    
}
