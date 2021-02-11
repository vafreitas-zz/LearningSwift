//
//  CPFViewModel.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import XCoordinator

class CPFViewModel {

    // MARK: Properties

    let router: WeakRouter<AccountRoute>
    let model: String

    // MARK: Initializer

    init(route: WeakRouter<AccountRoute>, model: String) {
        self.router = route
        self.model = model
    }
}
