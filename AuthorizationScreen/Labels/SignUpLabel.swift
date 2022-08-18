//
//  SignUpLabel.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 18.08.2022.
//

import Foundation
import UIKit

class SignUpLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        text = "Don't have account?  Sign up"
        textColor = .systemGray4
        font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 15)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
