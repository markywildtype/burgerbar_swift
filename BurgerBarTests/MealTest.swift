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
    var ketchup: Condiment!
    var mayonnaise: Condiment!
    var vinegar: Condiment!
    var condiments: [Condiment]!
    var meal: Meal!
    var meal2: Meal!
    
    override func setUp() {
        super.setUp()
        veggieburger = Burger(type: .veggieburger)
        chips = Chips()
        coke = Soda(type: .cola, size: .small)
        ketchup = Condiment(type: .ketchup)
        mayonnaise = Condiment(type: .mayonnaise)
        vinegar = Condiment(type: .vinegar)
        condiments = [ketchup, mayonnaise, vinegar]
        meal = Meal(burger: veggieburger, side: chips, beverage: coke)
        meal2 = Meal(burger: veggieburger, side: chips, beverage: coke, condiments: condiments)
    }
    
    override func tearDown() {
        meal = nil
        veggieburger = nil
        chips = nil
        coke = nil
        ketchup = nil
        mayonnaise = nil
        vinegar = nil
        condiments = nil
        meal = nil
        meal2 = nil
        super.tearDown()
    }
    
    func testMealHasBurger() {
        XCTAssertNotNil(meal.chosenBurger)
        XCTAssertEqual(meal.chosenBurger.burgerType, .veggieburger)
    }
    
    func testMealHasSide() {
        XCTAssertNotNil(meal.chosenSide)
        XCTAssertEqual(meal.chosenSide.description, "Chips")
    }
    
    func testMealHasBeverage() {
        XCTAssertNotNil(meal.chosenBeverage)
        XCTAssertEqual(meal.chosenBeverage.description, "Coke")
    }
    
    func testMealCanHaveCondiments() {
        XCTAssertEqual(meal2.chosenCondiments.count, 3)
        XCTAssertEqual(meal2.chosenCondiments[1].condimentType, .mayonnaise)
    }
    
    func testMealHasAPrice() {
//        XCTAssertEqual(meal.getPrice(), 5.95)
//        XCTAssertEqual(meal2.getPrice(), 6.85)
        XCTAssertEqual(meal2.price, 6.85)
    }
    
}
