//
//  TextValidator.swift
//  HomeWork9
//

import Foundation

class TextValidator {
    
    func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        return nil
    }
}


class EmailValidator: TextValidator {
    override func validate(text: String) -> String? {
        guard text.count <= 30 else { return "Кількість символів має бути менше 30" }
        return super.validate(text: text)
    }
}

class PasswordValidator: TextValidator {
    override func validate(text: String) -> String? {
        guard text.count <= 16 else { return "Кількість символів має бути менше 16" }
        return super.validate(text: text)
    }
}

