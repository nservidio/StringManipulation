//
//  StatisticsViewModel.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import UIKit

/**
 This ended up being a pretty simplistic view model. Eventually you could have this observing a model
 for changes and updating its display string.
 */
final class StatisticsViewModel {
    
    fileprivate let stringStatisitics: StringStatistics

    var displayString: String {
        return "\(stringStatisitics.numberOfConsonants) consonants, \(stringStatisitics.numberOfVowels) vowels, \(stringStatisitics.numberOfNumbers) number, \(stringStatisitics.numberOfPunctuationMarks) punctuation marks"
    }
    
    init(stringStatistics: StringStatistics) {
        self.stringStatisitics = stringStatistics
    }
}
