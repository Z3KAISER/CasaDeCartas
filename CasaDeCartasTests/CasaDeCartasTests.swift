//
//  CasaDeCartasTests.swift
//  CasaDeCartasTests
//
//  Created by Andrew Wilhelm on 8/15/16.
//  Copyright © 2016 Geezer, Inc. All rights reserved.
//

//import XCTest
//@testable import CasaDeCartas

import Quick
import Nimble
import CasaDeCartas

class CasaDeCartasTests: QuickSpec {
    override func spec() {
        describe("CasaDeCartas") {
            it("works") {
                expect(true).to(beTrue())
            }
        }
        
        describe("RGBUIColor") {
            it("is a correct representation of the values") {
                let thoughtbotRed = UIColor(
                    red: CGFloat(195/255),
                    green: CGFloat(47/255),
                    blue: CGFloat(52/255),
                    alpha: 1
                )
                let color = RGBUIColor(red: 195, green: 47, blue: 52)
                
                expect(color).to(equal(thoughtbotRed))
            }
        }

    }
}


//class CasaDeCartasTests: XCTestCase {
//    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
//    
//}
