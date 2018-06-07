//
//  JuiceTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class JuiceTest: XCTestCase {
    
    var juice: Juice!
    
    override func setUp() {
        super.setUp()
        juice = Juice(type: .apple)
    }
    
    override func tearDown() {
        juice = nil
        super.tearDown()
    }
    
    func testHasJuiceType() {
        XCTAssertEqual(juice.juiceType, .apple)
    }

    func testHasPrice() {
        XCTAssertEqual(juice.price, 1.30)
    }
    
    func testInMealStatusStartsFalse() {
        XCTAssertFalse(juice.inMeal)
    }
    
    func testAddingToMealUpdatesInMealStatus() {
        juice.addToMeal()
        XCTAssertTrue(juice.inMeal)
    }
    
    func testAddingToMealUpdatesPrice() {
        juice.addToMeal()
        XCTAssertEqual(juice.price, 1.00)
    }
    
    
}
