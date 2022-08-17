//
//  FacebookButton.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 18.08.2022.
//

import Foundation
import UIKit

class FacebookButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setConfiguration() {
        setTitle("Facebook", for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 15)
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = .systemBlue
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = .zero
        layer.shadowRadius = 15
        layer.shouldRasterize = true
       // setImage(UIImage(named: "facebook"), for: .normal)
        layer.rasterizationScale = UIScreen.main.scale
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setImageToButton() {
        let buttonImageView = UIImageView()
        buttonImageView.image = UIImage(named: "facebook")
    }
}
