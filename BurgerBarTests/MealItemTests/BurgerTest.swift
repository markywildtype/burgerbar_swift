//
//  BurgerTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class BurgerTest: XCTestCase {
    
    var burger: Burger!
    var burger2: Burger!
    
    override func setUp() {
        super.setUp()
        burger = Burger(type: .cheeseburger)
        burger2 = Burger(type: .chickenburger)
    }
    
    override func tearDown() {
        burger = nil
        super.tearDown()
    }
    
    func testHasBurgerType() {
        XCTAssertEqual(burger.burgerType, .cheeseburger)
    }
    
    func testHasDescription() {
        XCTAssertEqual(burger.description, "Cheeseburger")
        XCTAssertEqual(burger2.description, "Chickenburger")
    }
    
    func testHasPrice() {
        XCTAssertEqual(burger.price, 6.45)
        XCTAssertEqual(burger2.price, 6.95)
    }
    
    func testAddingToMealUpdatesPrice() {
        burger2.addToMeal()
        XCTAssertEqual(burger2.price, 5.45)
    }
    
}
