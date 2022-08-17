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
    let loginTextField = LoginTextField()
    let passwordTextField = PasswordTextField()
    let loginButton = LoginButton()
    let forgotPasswordLabel = ForgotPasswordLabel()
    private lazy var stackViewLoginAndPassword = UIStackView(arrangedSubviews: [loginTextField,
                                                                                passwordTextField],
                                                             axis: .vertical, spacing: 20)
    private lazy var stackViewLoginButtonAndLabel = UIStackView(arrangedSubviews: [loginButton,
                                                                                  forgotPasswordLabel],
                                                                axis: .vertical, spacing: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(mainTopLabel)
        view.addSubview(stackViewLoginAndPassword)
        view.addSubview(stackViewLoginButtonAndLabel)
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
        NSLayoutConstraint.activate([
            stackViewLoginAndPassword.topAnchor.constraint(equalTo: mainTopLabel.bottomAnchor, constant: 50),
            stackViewLoginAndPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackViewLoginAndPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        NSLayoutConstraint.activate([
            stackViewLoginButtonAndLabel.topAnchor.constraint(equalTo: stackViewLoginAndPassword.bottomAnchor, constant: 100),
            stackViewLoginButtonAndLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackViewLoginButtonAndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
}

