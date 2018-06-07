//
//  SodaTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class SodaTest: XCTestCase {
    
    var soda: Soda!
    var soda2: Soda!
    
    override func setUp() {
        super.setUp()
        soda = Soda(type: .cola, size: .medium)
        soda2 = Soda(type: .irnBru, size: .extraLarge)
    }
    
    override func tearDown() {
        soda = nil
        super.tearDown()
    }
    
    func testHasSodaType() {
        XCTAssertEqual(soda.sodaType, .cola)
    }
    
    func testHasSodaSize() {
        XCTAssertEqual(soda.sodaSize, .medium)
    }
    
    func testHasPrice() {
        XCTAssertEqual(soda.price, 1.50)
        XCTAssertEqual(soda2.price, 2.50)
    }
    
    func testAddingToMealUpdatesPrice() {
        soda.addToMeal()
        XCTAssertEqual(soda.price, 1.10)
    }
    
}
