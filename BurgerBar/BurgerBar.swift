//
//  BurgerBar.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class BurgerBar {
    
    var shoppingCart: [MealItem]
    var mealCart: [Meal]
    
    
    init() {
        shoppingCart = []
        mealCart = []
    }
    
    func addIndividualItemToCart(item: MealItem) {
        shoppingCart.append(item)
    }
    
    func addMeal(meal: Meal) {
        mealCart.append(meal)
    }
    
    func getCartTotal() -> Float {
        var cartTotal: Float = 0.00

        for item in shoppingCart {
            cartTotal += item.price
        }

        for meal in mealCart {
            cartTotal += meal.getPrice()
        }
        return cartTotal
    }
    
    func emptyCart(){
        shoppingCart = []
        mealCart = []
    }
    
}
