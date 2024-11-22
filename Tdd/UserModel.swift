//
//  UserModel.swift
//  Tdd
//
//  Created by Anusha Raju on 11/22/24.
//


struct UserModel{
    var username: String
    var password: String
    
    func isUsernameAlphanumeric() -> Bool {
        let containsLetter = username.rangeOfCharacter(from: .letters) != nil
        let containsDigit = username.rangeOfCharacter(from: .decimalDigits) != nil
        return containsLetter && containsDigit
    }
    
}