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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCanUpdatePrice() {
        let condiment = Condiment(type: .ketchup)
        condiment.updatePrice(newPrice: 0.75)
        XCTAssertEqual(condiment.price, 0.75)
    }
    
    func testHasCondimentType() {
        let condiment = Condiment(type: .mayonnaise)
        XCTAssertEqual(condiment.condimentType, .mayonnaise)
    }
    
}
