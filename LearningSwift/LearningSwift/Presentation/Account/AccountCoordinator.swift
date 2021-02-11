//
//  AccountCoordinator.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import XCoordinator

enum AccountRoute: Route {
    case name
    case cpf(String)
}

class AccountCoordinator: NavigationCoordinator<AccountRoute> {

    // MARK: Initializer

    init() {
        super.init(initialRoute: .name)
    }

    // MARK: Routes
    
    override func prepareTransition(for route: AccountRoute) -> NavigationTransition {
        switch route {
        case .name:
            let viewModel = NameViewModel(router: weakRouter)
            let controller = NameController(viewModel: viewModel)
            return .present(controller)
            
        case let .cpf(model):
            let viewModel = CPFViewModel(route: weakRouter, model: model)
            let controller = CPFController(viewModel: viewModel)
            return .push(controller)
        }
    }
}
