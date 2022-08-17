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
        setLeftIconForLogin()
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

extension UITextField {
    
    func setLeftIconForLogin() {
        let leftIconView = UIImageView(frame: CGRect(x: 15, y: 7, width: 17, height: 17))
        leftIconView.image = UIImage(named: "login")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(leftIconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

