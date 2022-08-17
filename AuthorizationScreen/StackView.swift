//
//  StackViewForLoginAndPassword.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import Foundation
import UIKit
 
extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        translatesAutoresizingMaskIntoConstraints = false
    }
}
