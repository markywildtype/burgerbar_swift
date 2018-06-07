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
    var chips: Chips!
    var ketchup: Condiment!
    var condiments: [Condiment]!
    var burger: Burger!
    var water: Water!
    var meal: Meal!
    
    override func setUp() {
        super.setUp()
        burgerBar = BurgerBar()
        potatoWedges = PotatoWedges()
        chips = Chips()
        ketchup = Condiment(type: .ketchup)
        condiments = [ketchup]
        burger = Burger(type: .chickenburger)
        water = Water()
        meal = Meal(burger: burger, side: potatoWedges, beverage: water, condiments: condiments)
    }
    
    override func tearDown() {
        burgerBar = nil
        super.tearDown()
    }
    
    func testShoppingCartStartsEmpty() {
        XCTAssertEqual(burgerBar.shoppingCart.count, 0)
    }
    
    func testCanAddItemsToShoppingCart() {
        burgerBar.addIndividualItemToCart(item: potatoWedges)
        XCTAssertEqual(burgerBar.shoppingCart.count, 1)
        burgerBar.addIndividualItemToCart(item: potatoWedges)
        XCTAssertEqual(burgerBar.shoppingCart.count, 2)
    }
    
    func testCanAddMeal() {
        burgerBar.addMeal(meal: meal)
        XCTAssertEqual(burgerBar.mealCart.count, 1)
    }
    
    func testCanEmptyCart() {
        burgerBar.addIndividualItemToCart(item: chips)
        burgerBar.addIndividualItemToCart(item: potatoWedges)
        burgerBar.addMeal(meal: meal)
        burgerBar.emptyCart()
        XCTAssertEqual(burgerBar.shoppingCart.count, 0)
        XCTAssertEqual(burgerBar.mealCart.count, 0)
    }
    
    func testCanGetPriceOfCart() {
        burgerBar.addIndividualItemToCart(item: potatoWedges)
        burgerBar.addIndividualItemToCart(item: ketchup)
        XCTAssertEqual(burgerBar.getCartTotal(), 1.99)
        burgerBar.emptyCart()
        burgerBar.addMeal(meal: meal)
        XCTAssertEqual(burgerBar.getCartTotal(), 7.34)
    }
    
    func testCanAddMealAndIndividualItems() {
        burgerBar.addMeal(meal: meal)
        burgerBar.addIndividualItemToCart(item: chips)
        XCTAssertEqual(burgerBar.getCartTotal(), 9.33)
    }
    
}
