//
//  LoginButton.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import Foundation
import UIKit

class LoginButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        setTitle("Login", for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 20)
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = .systemTeal
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = .zero
        layer.shadowRadius = 15
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        translatesAutoresizingMaskIntoConstraints = false
    }
}
