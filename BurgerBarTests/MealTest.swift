//
//  MealTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class MealTest: XCTestCase {
    
    var veggieburger: Burger!
    var chips: Side!
    var coke: Beverage!
    var juice: Beverage!
    var meal: Meal!
    
    override func setUp() {
        super.setUp()
        veggieburger = Burger(type: .veggieburger)
        chips = Chips()
        coke = Soda(type: .cola, size: .small)
        meal = Meal(burger: veggieburger, side: chips, beverage: coke)
    }
    
    override func tearDown() {
        meal = nil
        super.tearDown()
    }
    
    func testMealHasBurger() {
        XCTAssertEqual(meal.chosenBurger.burgerType, .veggieburger)
    }
    
    
    
}
