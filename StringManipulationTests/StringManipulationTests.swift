//
//  StringManipulationTests.swift
//  StringManipulationTests
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import XCTest
@testable import StringManipulation

// sut = service under test

class StringManipulationTests: XCTestCase {
    
    func testStringArray() {
        let sut = "foo"
        XCTAssertEqual(sut.stringArray, ["f","o","o"])
    }
    
    func testIsAlphaNumberic() {
        var sut = "abc"
        XCTAssertTrue(sut.isAlphaNumberic)
        
        sut = "123"
        XCTAssertTrue(sut.isAlphaNumberic)
        
        sut = "12a"
        XCTAssertTrue(sut.isAlphaNumberic)
    }
    
    func testIsWhiteSpaceOrPunctuation() {
        var sut = " "
        XCTAssertTrue(sut.isWhiteSpaceOrPunctuation)
        
        sut = "."
        XCTAssertTrue(sut.isWhiteSpaceOrPunctuation)
    }
    
    func testNumberOfConsonants() {
        var sut = "abc"
        XCTAssertEqual(sut.numberOfConsonants, 2)
        
        sut = "123"
        XCTAssertEqual(sut.numberOfConsonants, 0)
        
        sut = "Bad"
        XCTAssertEqual(sut.numberOfConsonants, 2)
    }
    
    func testNumberOfVowels() {
        var sut = "abc"
        XCTAssertEqual(sut.numberOfVowels, 1)
        
        sut = "123"
        XCTAssertEqual(sut.numberOfVowels, 0)
        
        sut = "Abe"
        XCTAssertEqual(sut.numberOfVowels, 2)
    }
    
    func testNumberOfNumbers() {
        var sut = "1bc"
        XCTAssertEqual(sut.numberOfNumbers, 1)
        
        sut = "123"
        XCTAssertEqual(sut.numberOfNumbers, 3)
        
        sut = "Bad"
        XCTAssertEqual(sut.numberOfNumbers, 0)
    }
    
    func testNumberOfPunctuationMarks() {
        var sut = ",bc"
        XCTAssertEqual(sut.numberOfPunctuationMarks, 1)
        
        sut = ",!;"
        XCTAssertEqual(sut.numberOfPunctuationMarks, 3)
        
        sut = "Bad"
        XCTAssertEqual(sut.numberOfPunctuationMarks, 0)
    }
    
    func testStringStatistics() {
        let sut = "3 Tacos, please."
        let statistics = sut.stringStatistics
        
        XCTAssertEqual(statistics.numberOfConsonants, 6)
        XCTAssertEqual(statistics.numberOfVowels, 5)
        XCTAssertEqual(statistics.numberOfNumbers, 1)
        XCTAssertEqual(statistics.numberOfPunctuationMarks, 2)
    }
}
