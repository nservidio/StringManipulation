//
//  StringAbbreviationsTest.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import XCTest

class StringAbbreviationsTest: XCTestCase {
    
    func testAbbreviatedStrings() {
        let sut = "Tacos are delicious."
        XCTAssertEqual(sut.abbreviatedStrings, "T3s a1e d7s.")
    }
    
    func testAbbreviatedString() {
        var sut = "Tacos"
        XCTAssertEqual(sut.abbreviatedString, "T3s")
        
        sut = "c2r"
        XCTAssertEqual(sut.abbreviatedString, "c1r")
    }
    
    func testSentenceArray() {
        let sut = "Tacos are delicious."
        XCTAssertEqual(sut.sentenceArray, ["Tacos", " ", "are", " ", "delicious", "."])
    }
}
