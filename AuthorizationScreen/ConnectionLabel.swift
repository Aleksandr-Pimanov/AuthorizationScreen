//
//  ConnectionLabel.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 18.08.2022.
//

import Foundation
import UIKit

class ConnectionLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        text = "or connect with"
        textColor = .systemGray4
        font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 13)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
