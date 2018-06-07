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
    
    override func setUp() {
        super.setUp()
        soda = Soda(type: .cola)
    }
    
    override func tearDown() {
        soda = nil
        super.tearDown()
    }
    
    func testHasSodaType() {
        XCTAssertEqual(soda.beverageType, .cola)
    }
    
    
}
