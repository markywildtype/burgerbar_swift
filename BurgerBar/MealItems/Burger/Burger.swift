//
//  Burger.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Burger: MealItem {
    
    var description: String
    var burgerType: BurgerType
    var price: Float
    
    init(type: BurgerType) {
        burgerType = type
        switch burgerType {
        case .cheeseburger:
            description = "Cheeseburger"
        case .chickenburger:
            description = "Chickenburger"
        case .hamburger:
            description = "Hamburger"
        case .veggieburger:
            description = "Veggieburger"
        }
        price = burgerType.rawValue
    }
    
    func addToMeal() {
        price = price - 1.50
    }
}
