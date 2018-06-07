//
//  MealItem.Protocol.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

protocol MealItem {
    
    var description: String { get }
    var price: Float { get set }
    
    func addToMeal()
}
