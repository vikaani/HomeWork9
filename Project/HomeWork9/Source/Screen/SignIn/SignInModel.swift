//
//  SignInModel.swift
//  HomeWork9
//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        didSet {
            guard let delegate else { return }
            let errorText = EmailValidator().validate(text: email)
            emailValid = errorText == nil
            
            delegate.didValidate(errorText: errorText, textType: emailValid ? .none : .error)
        }
    }
    
    var password: String = "" {
        didSet {
            guard let delegate else { return }
            let errorText = PasswordValidator().validate(text: password)
            passwordValid = errorText == nil
            
            delegate.didValidate(errorText: errorText, textType: passwordValid ? .none : .error)
        }
    }
}
