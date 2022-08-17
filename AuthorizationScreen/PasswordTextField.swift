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
        layer.cornerRadius = 10
        textColor = .darkGray
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        clearButtonMode = .always
        returnKeyType = .done
        placeholder = "Enter your password"
        font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UITextField {
    
    func setLeftIconForLogin() {
        let leftIconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        let loginImage = UIImage(named: "login")
        leftIconView.image = loginImage
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(leftIconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
