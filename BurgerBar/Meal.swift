//
//  Meal\.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Meal {
    
    let chosenBurger: Burger
    let chosenSide: Side
    let chosenBeverage: Beverage
    
    init(burger: Burger, side: Side, beverage: Beverage) {
        chosenBurger = burger
        chosenSide = side
        chosenBeverage = beverage
    }
    
}
