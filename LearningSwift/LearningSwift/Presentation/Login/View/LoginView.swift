//
//  LoginView.swift
//  LearningSwift
//
//  Created by victor.freitas on 13/01/21.
//

import UIKit
import Core
import Components
import TinyConstraints

class LoginView: BaseView {

    // MARK: Properties
    // MARK: TestGen2
    
    let titleLabel = UILabel() .. {
        $0.text = "Login Screen"
        $0.font = UIFont.systemFont(ofSize: 42)
        $0.textAlignment = .center
    }

    let emailTextField = UITextField() .. {
        $0.placeholder = "email"
        $0.font = UIFont.systemFont(ofSize: 24)
    }

    let passwordTextField = UITextField() .. {
        $0.placeholder = "password"
        $0.font = UIFont.systemFont(ofSize: 24)
        $0.isSecureTextEntry = true
    }

    let loginButton = UIButton() .. {
        $0.setTitle("Sign In", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        $0.setTitleColor(.blue, for: .normal)
    }

    // MARK: Lifecycle

    override func configureSubviews() {
        addSubview(titleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }

    override func configureConstraints() {
        titleLabel.topToSuperview(offset: 24, usingSafeArea: true)
        titleLabel.edgesToSuperview(excluding: [.top, .bottom], usingSafeArea: true)

        emailTextField.leadingToSuperview(offset: 16)
        emailTextField.trailingToSuperview(offset: 16)
        emailTextField.height(60)
        emailTextField.bottomToTop(of: passwordTextField, offset: -12)

        passwordTextField.leadingToSuperview(offset: 16)
        passwordTextField.trailingToSuperview(offset: 16)
        passwordTextField.height(60)
        passwordTextField.bottomToTop(of: loginButton, offset: -200)

        loginButton.bottomToSuperview(offset: -16, usingSafeArea: true)
        loginButton.height(40)
        loginButton.leadingToSuperview(offset: 16)
        loginButton.trailingToSuperview(offset: 16)
    }

}
