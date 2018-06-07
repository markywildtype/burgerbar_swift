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
    
    init(type: JuiceType){
        price = 1.30
        juiceType = type
        description = juiceType.rawValue
    }
    
    func addToMeal() {
        price = 1.00
    }
    
}
