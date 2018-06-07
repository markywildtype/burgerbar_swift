//
//  PotatoWedges.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class PotatoWedges: Side, MealItem {
    
    let description: String
    var price: Float
    
    init(){
        description = "Potato wedges"
        price = 1.49
    }
    
    func addToMeal(){
        price = 1.09
    }
    
    
}
