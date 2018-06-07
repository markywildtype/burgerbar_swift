//
//  WaterTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class WaterTest: XCTestCase {
    
    var water: Water!
    
    override func setUp() {
        super.setUp()
        water = Water()
    }
    
    override func tearDown() {
        water = nil
        super.tearDown()
    }
    
    func testHasPrice() {
        XCTAssertEqual(water.price, 0.90)
    }
    
    func testAddingToMealUpdatesPrice() {
        water.addToMeal()
        XCTAssertEqual(water.price, 0.50)
    }
    
}
