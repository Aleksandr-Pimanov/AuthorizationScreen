//
//  ViewController.swift
//  AuthorizationScreen
//
//  Created by Aleksandr Pimanov on 17.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "screen back")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mainTopLabel = MainTopLabel()
    
//    private let mainTopLabel: UILabel = {
//        let topLabel = UILabel()
//        topLabel.text = "Login"
//        topLabel.textColor = .white
//        topLabel.translatesAutoresizingMaskIntoConstraints = false
//        return topLabel
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        NSLayoutConstraint.activate([
            mainTopLabel.topAnchor.constraint(equalTo: backgroundImageView.safeAreaLayoutGuide.topAnchor, constant: 60),
            mainTopLabel.leadingAnchor.constraint(equalTo: backgroundImageView.leadingAnchor, constant: 160),
            mainTopLabel.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: -120)
        ])
    }
    
    private func setupViews() {
        view.addSubview(backgroundImageView)
        backgroundImageView.addSubview(mainTopLabel)
    }
}

