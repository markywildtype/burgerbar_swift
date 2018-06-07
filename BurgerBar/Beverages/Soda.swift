//
//  Soda.swift
//  BurgerBar
//
//  Created by Mark Blanford on 07/06/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import Foundation

class Soda {
    
    let sodaType: SodaType
    let sodaSize: SodaSize
    var price: Float {
        get {
            return sodaSize.rawValue
        }
    }
    
    init(type: SodaType, size: SodaSize) {
        sodaType = type
        sodaSize = size
    }
    
}
