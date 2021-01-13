//
//  LoginViewModel.swift
//  LearningSwift
//
//  Created by victor.freitas on 13/01/21.
//

import Foundation

class LoginViewModel {

    // MARK: Properties

    var model: LoginModel

    // MARK: Initializers

    init(model: LoginModel = .init()) {
        self.model = model
    }
}
