//
//  SwiftHexColorsComparisonTests.swift
//  UIColorHexPerfomanceTests
//
//  Created by Julian Drapaylo on 02/03/2019.
//  Copyright © 2019 Julian Drapaylo. All rights reserved.
//

import XCTest
import SwiftHEXColors

class SwiftHexColorsTests: XCTestCase {
    func testShortLoop() {
        measure {
            for _ in 0..<TestConstants.shortLoopCount {
                let _ = UIColor(hexString: TestConstants.defaultHexColor)
            }
        }
    }
    
    func testMediumLoop() {
        measure {
            for _ in 0..<TestConstants.mediumLoopCount {
                let _ = UIColor(hexString: TestConstants.defaultHexColor)
            }
        }
    }
    
    func testLongLoop() {
        measure {
            for _ in 0..<TestConstants.longLoopCount {
                let _ = UIColor(hexString: TestConstants.defaultHexColor)
            }
        }
    }
}
