//
//  String+Abbreviations.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import Foundation

extension String {
    var abbreviatedStrings: String {
        return sentenceArray.map {
            if $0.isAlphaNumberic {
                return $0.abbreviatedString
            } else {
                return $0
            }
        }.joined()
    }
    
    var abbreviatedString: String {
        var stringArray = self.stringArray
        if stringArray.count < 3 {
            return self
        } else {
            let first = stringArray.remove(at: 0)
            if let last = stringArray.popLast() {
                return first + String(stringArray.count) + last
            } else {
                return ""
            }
        }
    }
    
    /**
     Returns an array of words spaces and punctuation.
     */
    var sentenceArray: [String] {
        var sentence = [String]()
        var word: [String]?
        
        for (index, string) in stringArray.enumerated() {
            let stringIsAlphaNumberic = string.isAlphaNumberic
            let stringIsWhiteSpaceOrPunctuation = string.isWhiteSpaceOrPunctuation
            let isLastIndex = index == stringArray.count - 1

            if word != nil { // If we're building up a word
                if stringIsAlphaNumberic { // If we get another letter continue the word
                    word?.append(string)
                    handleIsLastIndex(isLastIndex, forWord: &word, forSentence: &sentence)
                } else if stringIsWhiteSpaceOrPunctuation { // Else end the current word
                    add(&word, toSentence: &sentence)
                    sentence.append(string)
                }
            } else if stringIsAlphaNumberic { // Build a new word
                word = [string]
                handleIsLastIndex(isLastIndex, forWord: &word, forSentence: &sentence)
            } else if stringIsWhiteSpaceOrPunctuation {
                sentence.append(string)
            }
        }
        return sentence
    }

    fileprivate func handleIsLastIndex(_ isLastIndex: Bool, forWord word: inout [String]?, forSentence sentence: inout [String]) {
        if isLastIndex {
            add(&word, toSentence: &sentence)
        }
    }

    fileprivate func add(_ word: inout [String]?, toSentence sentence: inout [String]) {
        if let joined = word?.joined() {
            sentence.append(joined)
        }
        word = nil
    }
}
