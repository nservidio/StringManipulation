//
//  StatisticsViewModelTests.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import XCTest

class StatisticsViewModelTests: XCTestCase {
    
    func testDisplayString() {
        let testStatistics = StringStatistics(numberOfConsonants: 1, numberOfVowels: 3, numberOfNumbers: 5, numberOfPunctuationMarks: 7)
        let sut = StatisticsViewModel(stringStatistics: testStatistics)
        XCTAssertEqual(sut.displayString, "1 consonants, 3 vowels, 5 number, 7 punctuation marks")
    }
}
