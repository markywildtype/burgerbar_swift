//
//  SweetPotatoFries.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class SweetPotatoFries: Side, MealItem {
    
    let description: String
    var price: Float
    
    init() {
        description = "Sweet potato fries"
        price = 2.99
    }
    
    func addToMeal() {
        price = 2.00
    }
    
}
