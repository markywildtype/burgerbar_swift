//
//  Meal\.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Meal {
    
    let items: [MealItem]
    
    init(burger: Burger) {
        items = [burger]
    }
    
}
