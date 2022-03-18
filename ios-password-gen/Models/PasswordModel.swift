//
//  PasswordModel.swift
//  ios-password-gen
//
//  Created by Kacper Stawiński on 15/03/2022.
//

import UIKit

struct PasswordModel {
    let collections: [String: String] = [
        "bigLetters": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "smallLetters": "abcdefghijklmnopqrstuvwxyz",
        "numbers": "0123456789",
        "specialChars": "!@#$%^&*)(+=._\\-"
    ]

    func create (
        bigLetters: Bool,
        smallLetters: Bool,
        numbers: Bool,
        specialChars: Bool,
        length: Int) -> String
    {
        var allCharactersArray = ""
        
        if bigLetters {
            allCharactersArray = allCharactersArray + collections["bigLetters"]!
        }
        
        if smallLetters {
            allCharactersArray = allCharactersArray + collections["smallLetters"]!
        }
        
        if numbers {
            allCharactersArray = allCharactersArray + collections["numbers"]!
        }
        
        if specialChars {
            allCharactersArray = allCharactersArray + collections["specialChars"]!
        }
        
        let passwordArr = Array(allCharactersArray).shuffled().prefix(length)
        
        return String(passwordArr)
    }
    
}
