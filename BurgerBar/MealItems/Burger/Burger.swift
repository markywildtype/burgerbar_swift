//
//  Burger.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Burger: MealItem {
    
    var burgerType: BurgerType
    var price: Float
    var inMeal: Bool
    
    init(type: BurgerType) {
        burgerType = type
        price = burgerType.rawValue
        inMeal = false
    }
    
    func addToMeal() {
        inMeal = true
        price = price - 1.50
    }
}
