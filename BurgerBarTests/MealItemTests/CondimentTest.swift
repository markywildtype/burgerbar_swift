//
//  CondimentTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 05/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class CondimentTest: XCTestCase {
    
    var condiment: Condiment!
    var condiment2: Condiment!
    
    override func setUp() {
        super.setUp()
            condiment = Condiment(type: .ketchup)
            condiment2 = Condiment(type: .mayonnaise)
    }
    
    override func tearDown() {
        condiment = nil
        condiment2 = nil
        super.tearDown()
    }
    
    func testHasCondimentType() {
        XCTAssertEqual(condiment.condimentType, .ketchup)
        XCTAssertEqual(condiment2.condimentType, .mayonnaise)
    }
    
    func testHasDescription() {
        XCTAssertEqual(condiment.description, "Ketchup")
        XCTAssertEqual(condiment2.description, "Mayonnaise")
    }
    
    func testHasPrice() {
        XCTAssertEqual(condiment.price, 0.50)
    }
    
    func testAddingToMealUpdatesPrice() {
        condiment.addToMeal()
        XCTAssertEqual(condiment.price, 0.30)
    }
    

    
}
