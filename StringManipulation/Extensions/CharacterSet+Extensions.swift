//
//  CharacterSet+Extensions.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import Foundation

extension CharacterSet {
    static func vowels() -> CharacterSet {
        var characterSet = CharacterSet()
        characterSet.insert(charactersIn: "aeiouAEIOU")
        return characterSet
    }
    
    static func consonants() -> CharacterSet {
        var characterSet = CharacterSet.letters
        characterSet.remove(charactersIn: "aeiouAEIOU")
        return characterSet
    }
}
