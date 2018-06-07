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
    let chosenCondiments: [Condiment]
    
    init(burger: Burger, side: Side, beverage: Beverage) {
        chosenBurger = burger
        chosenSide = side
        chosenBeverage = beverage
        chosenCondiments = []
    }
    
    init(burger: Burger, side: Side, beverage: Beverage, condiments: [Condiment]) {
        chosenBurger = burger
        chosenSide = side
        chosenBeverage = beverage
        chosenCondiments = condiments
    }
    
    func getPrice() -> Float {
        var totalPrice: Float = 0.00
        
        chosenBurger.addToMeal()
        totalPrice += chosenBurger.price
        chosenSide.addToMeal()
        totalPrice += chosenSide.price
        chosenBeverage.addToMeal()
        totalPrice += chosenBeverage.price
        for condiment in chosenCondiments {
            condiment.addToMeal()
            totalPrice += condiment.price
        }
        return totalPrice
    }
    
}
