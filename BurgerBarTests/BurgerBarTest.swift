//
//  BurgerBarTest.swift
//  BurgerBarTests
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import XCTest
@testable import BurgerBar

class BurgerBarTest: XCTestCase {
    
    var burgerBar: BurgerBar!
    var potatoWedges: PotatoWedges!
    var ketchup: Condiment!
    
    override func setUp() {
        super.setUp()
        burgerBar = BurgerBar()
        potatoWedges = PotatoWedges()
        ketchup = Condiment(type: .ketchup)
    }
    
    override func tearDown() {
        burgerBar = nil
        super.tearDown()
    }
    
    func testShoppingCartStartsEmpty() {
        XCTAssertEqual(burgerBar.shoppingCart.count, 0)
    }
    
    func testCanAddItemsToShoppingCart() {
        burgerBar.addToCart(item: potatoWedges)
        XCTAssertEqual(burgerBar.shoppingCart.count, 1)
        burgerBar.addToCart(item: potatoWedges)
        XCTAssertEqual(burgerBar.shoppingCart.count, 2)
    }
    
    func testCanGetPriceOfCart() {
        burgerBar.addToCart(item: potatoWedges)
        burgerBar.addToCart(item: ketchup)
        XCTAssertEqual(burgerBar.getCartTotal(), 1.99)
    }
    
}
