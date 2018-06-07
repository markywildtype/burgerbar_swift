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
    
    var burger: Burger!
    var meal: Meal!
    
    override func setUp() {
        super.setUp()
        burger = Burger(type: .veggieburger)
        meal = Meal(burger: burger)
    }
    
    override func tearDown() {
        meal = nil
        super.tearDown()
    }
    
    func testMealHasBurger() {
        XCTAssertEqual(meal.items.count, 1)
    }
    
}
