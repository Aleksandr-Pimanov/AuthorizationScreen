//
//  LoginTextField.swift
//  AuthorizationScreen
//
//  Created by новый пользователь on 17.08.2022.
//

import Foundation
import UIKit

class LoginTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        backgroundColor = .white
        layer.cornerRadius = 12
        textColor = .gray
        clearButtonMode = .always
        returnKeyType = .done
        placeholder = "Enter your mail"
        font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
