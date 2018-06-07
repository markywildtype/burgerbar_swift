//
//  Juice.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Juice: Beverage, MealItem {
    
    var description: String
    let juiceType: JuiceType
    var price: Float
    var inMeal: Bool
    
    init(type: JuiceType){
        price = 1.30
        inMeal = false
        juiceType = type
        description = juiceType.rawValue
    }
    
    func addToMeal() {
        inMeal = true
        price = 1.00
    }
    
}
