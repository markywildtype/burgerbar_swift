//
//  ChipsTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class ChipsTest: XCTestCase {
    
    var chips: Chips!
    
    override func setUp() {
        super.setUp()
        chips = Chips()
    }
    
    override func tearDown() {
        chips = nil
        super.tearDown()
    }
    
    func testHasDescription() {
        XCTAssertEqual(chips.description, "Chips")
    }
    
    func testInMealStatusStartsFalse() {
        XCTAssertFalse(chips.inMeal)
    }

    func testHasPrice(){
        XCTAssertEqual(chips.price, 1.99)
    }
    
    func testAddingToMealUpdatesInMealStatus() {
        chips.addToMeal()
        XCTAssertTrue(chips.inMeal)
    }
    
    func testAddingToMealUpdatesPrice() {
        chips.addToMeal()
        XCTAssertEqual(chips.price, 1.0)
    }
    
}
