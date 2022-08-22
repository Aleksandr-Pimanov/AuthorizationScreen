//
//  PasswordTextField.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import Foundation
import UIKit

class PasswordTextField: UITextField {
    
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
        textColor = .darkGray
        clearButtonMode = .always
        returnKeyType = .done
        placeholder = "Enter your password"
        font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
