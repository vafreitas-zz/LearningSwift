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
            return .none()
            
        case let .cpf(model):
            print(model)
            return .none()
        }
    }
}
