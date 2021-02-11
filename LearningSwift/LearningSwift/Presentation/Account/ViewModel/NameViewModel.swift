//
//  NameViewModel.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import XCoordinator

class NameViewModel {

    // MARK: Propreties

    let router: WeakRouter<AccountRoute>

    // MARK: Intializer

    init(router: WeakRouter<AccountRoute>) {
        self.router = router
    }

    func goToCPF() {
        router.trigger(.cpf("Model"))
    }
}
