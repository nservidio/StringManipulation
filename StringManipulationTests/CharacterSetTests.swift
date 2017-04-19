//
//  CharacterSetTests.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import XCTest

class CharacterSetTests: XCTestCase {
    
    func testVowels() {
        let sut = CharacterSet.consonants()
        
        var testString = "b"
        XCTAssertNotNil(testString.rangeOfCharacter(from: sut))
        
        testString = "B"
        XCTAssertNotNil(testString.rangeOfCharacter(from: sut))
        
        testString = "1"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = ","
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = "a"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = "A"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
    }
    
    func testConsonants() {
        let sut = CharacterSet.consonants()
        
        var testString = "b"
        XCTAssertNotNil(testString.rangeOfCharacter(from: sut))
        
        testString = "B"
        XCTAssertNotNil(testString.rangeOfCharacter(from: sut))
        
        testString = "1"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = ","
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = "a"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
        
        testString = "A"
        XCTAssertNil(testString.rangeOfCharacter(from: sut))
    }
}
