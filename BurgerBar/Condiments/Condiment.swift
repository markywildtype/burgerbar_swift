//
//  Condiment.swift
//  BurgerBar
//
//  Created by Mark Blanford on 05/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Condiment: MealItem {
    
    var price: Float
    var inMeal: Bool 
    let condimentType: CondimentType
    
    init(type: CondimentType){
        condimentType = type
        price = 0.50
        inMeal = false
    }
 
    func addToMeal() {
        inMeal = true
        price = 0.30
    }
    
}
