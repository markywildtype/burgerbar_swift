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
    
    init() {
        shoppingCart = []
    }
    
    func addToCart(item: MealItem) {
        shoppingCart.append(item)
    }
    
    func getCartTotal() -> Float {
        var cartTotal: Float = 0.00
        
        for item in shoppingCart {
            cartTotal += item.price
        }
        return cartTotal
    }
    
}
