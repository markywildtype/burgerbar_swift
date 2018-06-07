//
//  Soda.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Soda: MealItem {
    
    let sodaType: SodaType
    let sodaSize: SodaSize
    var price: Float 
    var inMeal: Bool
    
    init(type: SodaType, size: SodaSize) {
        sodaType = type
        sodaSize = size
        price = sodaSize.rawValue
        inMeal = false
    }
    
    func addToMeal() {
        inMeal = true
        price = price - 0.40
    }
    
}
