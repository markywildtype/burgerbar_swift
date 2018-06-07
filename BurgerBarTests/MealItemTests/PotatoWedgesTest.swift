//
//  PotatoWedgesTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class PotatoWedgesTest: XCTestCase {
    
    var potatoWedges: PotatoWedges!
    
    override func setUp() {
        super.setUp()
        potatoWedges = PotatoWedges()
    }
    
    override func tearDown() {
        potatoWedges = nil
        super.tearDown()
    }
    
    func testHasDescription() {
        XCTAssertEqual(potatoWedges.description, "Potato wedges")
    }
    
    func testHasPrice(){
        XCTAssertEqual(potatoWedges.price, 1.49)
    }
        
    func testAddingToMealUpdatesPrice() {
        potatoWedges.addToMeal()
        XCTAssertEqual(potatoWedges.price, 1.09)
    }
    
}
