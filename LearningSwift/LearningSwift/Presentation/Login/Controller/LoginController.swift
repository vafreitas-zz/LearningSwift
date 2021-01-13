//
//  ViewController.swift
//  LearningSwift
//
//  Created by victor.freitas on 13/01/21.
//

import UIKit

class LoginController: UIViewController {

    let rootView = LoginView()
    let viewModel: LoginViewModel

    override func loadView() {
        view = rootView
    }

    // MARK: Initializer

    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARMK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        rootView.loginButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }

    @objc func signInTapped() {
        viewModel.model.email = rootView.emailTextField.text ?? ""
        viewModel.model.password = rootView.passwordTextField.text ?? ""
        print(viewModel.model)
    }
}

