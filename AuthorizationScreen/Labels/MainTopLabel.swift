//
//  MainTopLabel.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import Foundation
import UIKit

class MainTopLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        text = "Login"
        textColor = .white
        font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 27)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
 
