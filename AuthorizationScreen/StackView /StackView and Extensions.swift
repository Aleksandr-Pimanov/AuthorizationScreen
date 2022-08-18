//
//  StackViewForLoginAndPassword.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import Foundation
import UIKit
 
extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
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
    
    func setLeftIconForPassword() {
        let leftIconView = UIImageView(frame: CGRect(x: 15, y: 5, width: 20, height: 20))
        leftIconView.image = UIImage(named: "password")
        let iconContainerView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(leftIconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
