//
//  SweetPotatoFriesTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class SweetPotatoFriesTest: XCTestCase {
    
    var sweetPotatoFries: SweetPotatoFries!
    
    override func setUp() {
        super.setUp()
        sweetPotatoFries = SweetPotatoFries()
    }
    
    override func tearDown() {
        sweetPotatoFries = nil
        super.tearDown()
    }
    
    func testHasDescription() {
        XCTAssertEqual(sweetPotatoFries.description, "Sweet potato fries")
    }
    
   func testHasPrice(){
        XCTAssertEqual(sweetPotatoFries.price, 2.99)
    }
        
    func testAddingToMealUpdatesPrice() {
        sweetPotatoFries.addToMeal()
        XCTAssertEqual(sweetPotatoFries.price, 2.0)
    }
    
}
