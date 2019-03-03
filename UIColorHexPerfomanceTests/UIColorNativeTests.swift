//
//  UIColorHexPerfomanceTests.swift
//  UIColorHexPerfomanceTests
//
//  Created by Julian Drapaylo on 02/03/2019.
//  Copyright © 2019 Julian Drapaylo. All rights reserved.
//

import XCTest

class UIColorNativeTests: XCTestCase {
    var computedNativeColor: UIColor {
        return UIColor(red: 224.0 / 255.0,
                       green: 17.0 / 255.0,
                       blue: 95.0 / 255.0,
                       alpha: 1.0)
    }
    
    func testShortLoop() {
        measure {
            for _ in 0..<TestConstants.shortLoopCount {
                let _ = computedNativeColor
            }
        }
    }
    
    func testMediumLoop() {
        measure {
            for _ in 0..<TestConstants.mediumLoopCount {
                let _ = computedNativeColor
            }
        }
    }
    
    func testLongLoop() {
        measure {
            for _ in 0..<TestConstants.longLoopCount {
                let _ = computedNativeColor
            }
        }
    }
}
