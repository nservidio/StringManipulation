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
        var sut = "Tacos are delicious."
        XCTAssertEqual(sut.abbreviatedStrings, "T3s a1e d7s.")

        sut = "abc 123"
        XCTAssertEqual(sut.abbreviatedStrings, "a1c 113")
    }
    
    func testAbbreviatedString() {
        var sut = "Tacos"
        XCTAssertEqual(sut.abbreviatedString, "T3s")
        
        sut = "c2r"
        XCTAssertEqual(sut.abbreviatedString, "c1r")
    }
    
    func testSentenceArray() {
        var sut = "Tacos are delicious."
        XCTAssertEqual(sut.sentenceArray, ["Tacos", " ", "are", " ", "delicious", "."])

        sut = "abc 123"
        XCTAssertEqual(sut.sentenceArray, ["abc", " ", "123"])

        sut = "abc 1"
        XCTAssertEqual(sut.sentenceArray, ["abc", " ", "1"])
    }
}
