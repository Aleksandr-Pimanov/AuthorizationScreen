//
//  TwitterButton.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 18.08.2022.
//

import Foundation
import UIKit

class TwitterButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func setConfiguration() {
        setTitle("Twitter", for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 15)
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = .systemPurple
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = .zero
        layer.shadowRadius = 15
        layer.shouldRasterize = true
        imageView?.image = UIImage(named: "twitter")
        layer.rasterizationScale = UIScreen.main.scale
        translatesAutoresizingMaskIntoConstraints = false
    }
}

