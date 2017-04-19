//
//  String+Statistics.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import Foundation

struct StringStatistics {
    var numberOfConsonants = 0
    var numberOfVowels = 0
    var numberOfNumbers = 0
    var numberOfPunctuationMarks = 0
}

extension String {
    var stringArray: [String] {
        return self.characters.map {
            String($0)
        }
    }
}

extension String {
    // TODO: Strengthen these. These only check to see if the string contains a character from the given
    // character set.
    var isAlphaNumberic: Bool {
        return self.rangeOfCharacter(from: CharacterSet.alphanumerics) != nil
    }
    
    var isWhiteSpaceOrPunctuation: Bool {
        var characterSet = CharacterSet.whitespacesAndNewlines
        characterSet = characterSet.union(CharacterSet.punctuationCharacters)
        return self.rangeOfCharacter(from: characterSet) != nil
    }
}

extension String {
    var numberOfConsonants: Int {
        return self.stringArray.filter {
            $0.rangeOfCharacter(from: CharacterSet.consonants()) != nil
            }.count
    }
    
    var numberOfVowels: Int {
        return self.stringArray.filter {
            $0.rangeOfCharacter(from: CharacterSet.vowels()) != nil
            }.count
    }
    
    var numberOfNumbers: Int {
        return self.stringArray.filter {
            $0.rangeOfCharacter(from: CharacterSet.decimalDigits) != nil
            }.count
    }
    
    var numberOfPunctuationMarks: Int {
        return self.stringArray.filter {
            $0.rangeOfCharacter(from: CharacterSet.punctuationCharacters) != nil
            }.count
    }
}

extension String {
    var stringStatistics: StringStatistics {
        return StringStatistics(numberOfConsonants: numberOfConsonants, numberOfVowels: numberOfVowels, numberOfNumbers: numberOfNumbers, numberOfPunctuationMarks: numberOfPunctuationMarks)
    }
}
